resource "aws_internet_gateway" "mern_internet_gateway" {
  vpc_id = var.vpc_id
  tags = {
    "Name" = "mern_igv"
  }
}
