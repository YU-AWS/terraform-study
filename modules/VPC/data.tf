
#data "aws_vpc" "vpc_id" {
# id = var.vpc_id
#  filter {
#    name   = "tag:Name"
#    values = ["terraform-study-vpc"]
#  }
#}

data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.dev_vpc.id]
  }

  tags = {
    Name = var.subnet_tag
  }
}

data "aws_subnet" "subnet" {
  for_each = toset(data.aws_subnets.subnets.ids)
  id       = each.value
}
