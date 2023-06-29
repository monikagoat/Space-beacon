provider "aws" {
  region     = "us-east-1"
}

resource "aws_vpc" "galaxy" {
  cidr_block       = "192.168.10.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "galaxy"
  }
}

# Subnet
resource "aws_subnet" "galaxy-public-subnet-1a" {
  vpc_id     = aws_vpc.galaxy.id
  cidr_block = "192.168.10.0/26"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Galaxy-Main-Public"
  }
}

# Subnet
resource "aws_subnet" "galaxy-private-subnet-1b" {
  vpc_id     = aws_vpc.galaxy.id
  cidr_block = "192.168.10.64/26"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Galaxy-Main-Private"
  }
}


