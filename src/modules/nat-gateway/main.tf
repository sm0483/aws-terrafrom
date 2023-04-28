resource "aws_eip" "test_nat" {
  vpc = true
}

resource "aws_nat_gateway" "mern_ng" {
  allocation_id = aws_eip.test_nat.id
  subnet_id     = var.subnet_ids.public_1a


  tags = {
    "Name" = "mern_ng"
  }
}
