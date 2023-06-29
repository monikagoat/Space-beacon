resource "aws_eip" "nat" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = "aws_eip.id"
  subnet_id = aws_subnet.galaxy-public-subnet-1a.id
}
