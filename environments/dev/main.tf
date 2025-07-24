module "ec2" {
  source      = "../../modules/ec2"
  projectName = var.projectName
  environment = var.environment
}

module "s3" {
  source      = "../../modules/s3"
  projectName = var.projectName
  environment = var.environment
}

