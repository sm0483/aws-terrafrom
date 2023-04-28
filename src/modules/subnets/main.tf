resource "aws_subnet" "this" {
  for_each = local.subnets

  vpc_id     = var.vpc_id
  cidr_block = each.value.cidr_block

  tags = each.value.tags
}
