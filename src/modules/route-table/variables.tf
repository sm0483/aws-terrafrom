variable "internet_gateway_id" {
  type = string
}

variable "vpc_id" {
  type = string
}


variable "subnet_ids" {
  type = object({
    public_1a  = string
    public_1b  = string
    private_1c = string
    private_1d = string
  })

}

variable "nat_id" {
  type = string
  
}
