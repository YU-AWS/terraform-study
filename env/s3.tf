module "s3" {
  source = "../modules/S3"

  name = var.name
  env  = var.env


}