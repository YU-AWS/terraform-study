# vpc_id = "vpc-0550bb6cf4044c975"

az_a = "ap-northeast-1a"

az_c = "ap-northeast-1c"

az_d = "ap-northeast-1d"

cidr_block = "10.0.0.0/16"

cidr_sunet_block_public_a = "10.0.1.0/24"

cidr_sunet_block_public_c = "10.0.5.0/24"

cidr_sunet_block_private_a = "10.0.11.0/24"

cidr_sunet_block_private_c = "10.0.21.0/24"

cidr_rt_block = "0.0.0.0/0"

name = "yuji"

env = "dev"

subnet_tag = {
  public  = "terraform-study-public-*"
  private = "terraform-study-private-*"
}

#ECS
desired_count = 0

#database
engine_version               = "16.1"
backup_retention_period      = 1
preferred_backup_window      = "15:30-16:00"
rds_instance_count           = 1
instance_class               = "db.t3.medium"
preferred_maintenance_window = "Tue:09:00-Tue:09:30"
