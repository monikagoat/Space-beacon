resource "aws_internet_gateway" "galaxy_gw" {
  vpc_id = aws_vpc.galaxy.id

  tags = {
    Name = "galaxy_gw"
  }
}