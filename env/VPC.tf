module "VPC" {
  source = "../modules/VPC"
  az_a   = var.az_a

  cidr_block = var.cidr_block

  cidr_sunet_block = var.cidr_sunet_block

  cidr_rt_block = var.cidr_rt_block

}
