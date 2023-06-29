resource "aws_route_table" "private-galaxy_route" {
  vpc_id = aws_vpc.galaxy.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
}

resource "aws_route_table" "public-galaxy_route" {
  vpc_id = aws_vpc.galaxy.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.galaxy_gw.id
  }
}

resource "aws_route_table_association" "private_subnet_association-1b" {
  subnet_id      = aws_subnet.galaxy-private-subnet-1b.id
  route_table_id = aws_route_table.private-galaxy_route.id
}

resource "aws_route_table_association" "public_subnet_association-1a" {
  subnet_id      = aws_subnet.galaxy-public-subnet-1a.id
  route_table_id = aws_route_table.public-galaxy_route.id
}