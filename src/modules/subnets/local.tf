locals {
  subnets = {
    "mern_subnet_public-1a" = {
      cidr_block              = var.subnet_public-1a_cidr
      map_public_ip_on_launch = true
      availability_zone       = "us-east-1a"
      tags = {
        "Name" = "mern_subnet_public-1a"
      }
    },
    "mern_subnet_public-1b" = {
      cidr_block              = var.subnet_public-1b_cidr
      map_public_ip_on_launch = true
      availability_zone       = "us-east-1b"
      tags = {
        "Name" = "mern_subnet_public-1b"
      }
    },
    "mern_subnet_private-1c" = {
      cidr_block              = var.subnet_private-1a_cidr
      map_public_ip_on_launch = false
      availability_zone       = "us-east-1c"
      tags = {
        "Name" = "mern_subnet_private-1c"
      }
    },
    "mern_subnet_private-1d" = {
      cidr_block              = var.subnet_private-1b_cidr
      map_public_ip_on_launch = false
      availability_zone       = "us-east-1d"
      tags = {
        "Name" = "mern_subnet_private-1d"
      }
    }
  }
}


locals {
  subnet_ids = {
    public_1a  = aws_subnet.this["mern_subnet_public-1a"].id
    public_1b  = aws_subnet.this["mern_subnet_public-1b"].id
    private_1c = aws_subnet.this["mern_subnet_private-1c"].id
    private_1d = aws_subnet.this["mern_subnet_private-1d"].id

  }
}


