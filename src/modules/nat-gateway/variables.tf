variable "subnet_ids" {
  type = object({
    public_1a  = string
    public_1b  = string
    private_1c = string
    private_1d = string
  })
}
