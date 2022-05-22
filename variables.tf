
variable "cidr_block" {
  description = "The CIDR block of the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet" {
  description = "The CIDR of public subnet"
  type = string
  default = "10.0.1.0/24"
}

variable "private_subnet" {
  description = "The CIDR of private subnet"
  type = string
  default = "10.0.2.0/24"
}