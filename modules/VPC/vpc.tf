resource "aws_vpc" "dev_vpc" {
  cidr_block           = "${var.cidr_block}"
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-study-vpc"
  }
}