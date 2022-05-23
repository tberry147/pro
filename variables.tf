
variable "cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet" {
  description = "The CIDR of public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet" {
  description = "The CIDR of private subnet"
  type        = string
  default     = "10.0.2.0/24"
}
variable "ami" {
  description = "The AMI of the instance"
  type        = string
  default     = "ami-0022f774911c1d690"
}
variable "instance_type" {
  description = "The type of instance"
  type        = string
  default     = "t2.micro"

}

variable "create_instance" {
  description = "Count of instance"
  type        = bool
  default     = true

}

variable "instance_types" {
  description = "Types of instance"
  type        = list(any)
  default     = ["t2.micro", "t3.mirco"]

}