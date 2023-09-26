module "sqs" {
  source = "../modules/SQS"

  name = var.name
  env  = var.env


}