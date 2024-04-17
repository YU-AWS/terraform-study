resource "aws_eip" "nat" {
  vpc = true
}

resource "aws_nat_gateway" "public" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.dev_pub_subnet_1a.id

  tags = {
    Name = "dev-nat-gateway"
  }
}
