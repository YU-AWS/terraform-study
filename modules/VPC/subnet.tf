resource "aws_subnet" "dev_pub_subnet_1a" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = "${var.cidr_sunet_block}"
  availability_zone = "${var.az_a}"

  tags = {
    Name = "terraform-study-subnet1a"
  }
}