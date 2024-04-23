#dev環境を提供する仮想プライベートクラウド
resource "aws_vpc" "dev_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    #vpc name
    Name = "terraform-study-vpc"
  }
}
