resource "aws_subnet" "dev_pub_subnet_1a" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.cidr_sunet_block_public
  availability_zone = var.az_a

  tags = {
    Name = "terraform-study-public-subnet1a"
  }
}

resource "aws_subnet" "dev_pub_subnet_2c" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.cidr_sunet_block_public_c
  availability_zone = var.az_c

  tags = {
    Name = "terraform-study-public-subnet1c"
  }
}

resource "aws_subnet" "dev_pri_subnet_1a" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.cidr_sunet_block_private
  availability_zone = var.az_a

  tags = {
    Name = "terraform-study-private-subnet1a"
  }
}
