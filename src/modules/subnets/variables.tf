variable "subnet_public-1a_cidr" {
  type    = string
  default = "10.0.1.0/24"

}


variable "subnet_public-1b_cidr" {
  type    = string
  default = "10.0.2.0/24"

}



variable "subnet_private-1a_cidr" {
  type    = string
  default = "10.0.3.0/24"

}


variable "subnet_private-1b_cidr" {
  type    = string
  default = "10.0.4.0/24"

}

variable "vpc_id" {
  type = string
}
