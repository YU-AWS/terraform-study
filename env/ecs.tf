module "ecs" {
  source              = "../modules/ECS"
  public_subnet_ids   = module.VPC.public_subnet_ids
  public_subnet_ids_2 = module.VPC.public_subnet_ids_2
  private_subnet_ids  = module.VPC.private_subnet_ids
  vpc_id              = module.VPC.vpc_id
}
