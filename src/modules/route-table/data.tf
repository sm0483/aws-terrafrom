data "aws_route_table" "mern_default_route_table" {
  vpc_id = var.vpc_id

  filter {
    name   = "association.main"
    values = ["true"]
  }
}
