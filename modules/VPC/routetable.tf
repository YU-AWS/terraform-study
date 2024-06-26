#パブリックルートテーブル
resource "aws_route_table" "dev_pub_rt" {
  vpc_id = aws_vpc.dev_vpc.id
  route {
    cidr_block = var.cidr_rt_block
    gateway_id = aws_internet_gateway.dev_igw.id
  }
  tags = {
    Name = "terraform-dev-pub-rt"
  }
}

#SubnetとRoute tableの関連付け
resource "aws_route_table_association" "dev_pub_rt_associate" {
  subnet_id      = aws_subnet.dev_pub_subnet_1a.id
  route_table_id = aws_route_table.dev_pub_rt.id
}

#プライベートルートテーブル
resource "aws_route_table" "dev_pri_rt" {
  vpc_id = aws_vpc.dev_vpc.id
  route {
    cidr_block     = var.cidr_rt_block
    nat_gateway_id = aws_nat_gateway.public.id
  }
  tags = {
    Name = "terraform-dev-pri-rt"
  }
}

#SubnetとRoute tableの関連付け
resource "aws_route_table_association" "dev_pri_rt_associate" {
  subnet_id      = aws_subnet.dev_pri_subnet_1a.id
  route_table_id = aws_route_table.dev_pri_rt.id
}
