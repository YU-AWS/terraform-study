module "VPC" {
  source = "../modules/VPC"
  az_a   = var.az_a

  az_c = var.az_c

  cidr_block = var.cidr_block

  cidr_sunet_block_public = var.cidr_sunet_block_public

  cidr_sunet_block_public_c = var.cidr_sunet_block_public_c

  cidr_sunet_block_private = var.cidr_sunet_block_private

  cidr_rt_block = var.cidr_rt_block

}
