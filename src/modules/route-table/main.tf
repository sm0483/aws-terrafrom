resource "aws_route_table" "mern_private_rt" {
  vpc_id = var.vpc_id
  tags = {
    "Name" = "mern_private_rt"
  }
}


resource "aws_route" "internet_route" {
  route_table_id         = data.aws_route_table.mern_default_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gateway_id
}


resource "aws_route" "nat_route" {
  route_table_id         = aws_route_table.mern_private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.nat_id

}

resource "aws_route_table_association" "mern_public_association" {
  count = length(local.subnet_ids.public_subnet_ids)

  route_table_id = data.aws_route_table.mern_default_route_table.id
  subnet_id      = local.subnet_ids.public_subnet_ids[count.index]
}

resource "aws_route_table_association" "mern_private_association" {
  count = length(local.subnet_ids.private_subnet_ids)

  route_table_id = aws_route_table.mern_private_rt.id
  subnet_id      = local.subnet_ids.private_subnet_ids[count.index]

}
