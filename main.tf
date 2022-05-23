
# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

# Create Subnets
resource "aws_subnet" "public_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.public_subnet
  availability_zone = data.aws_availability_zones.az.names[0]
  tags = {
    Name = "Public"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.private_subnet
  availability_zone = data.aws_availability_zones.az.names[0]

  tags = {
    Name = "Private"

  }
}

# Create Instance
resource "aws_instance" "demo" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
}

# Create Instance with count
# Create Instance
resource "aws_instance" "count" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  count         = var.create_instance ? 2 : 0
}


# Create Instance with for_each
# Create Instance
resource "aws_instance" "each" {
  for_each = toset(var.instance_types)
  ami           = data.aws_ami.ami.id
  instance_type = each.value
  subnet_id     = aws_subnet.public_subnet.id
  
}
