locals {
  subnet_ids = {
    "private_subnet_ids" = [var.subnet_ids.private_1c, var.subnet_ids.private_1d]
    "public_subnet_ids"  = [var.subnet_ids.public_1a, var.subnet_ids.public_1b]
  }
}


