
# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

# Create Subnets
resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.public_subnet

  tags = {
    Name = "Main"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.private_subnet

  tags = {
    Name = "Main"
    
  }
}

# Create Instance
resource "aws_instance" "demo" {
  ami           = "ami-0022f774911c1d690" 
  instance_type = "t2.micro"
}
