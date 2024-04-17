output "public_subnet_ids" {
  value = aws_subnet.dev_pub_subnet_1a.id
}

output "public_subnet_ids_2" {
  value = aws_subnet.dev_pub_subnet_2c.id
}

output "private_subnet_ids" {
  value = aws_subnet.dev_pri_subnet_1a.id
}

output "vpc_id" {
  value = aws_vpc.dev_vpc.id
}
