module "vpc" {
  source      = "./modules/vpc"
  project     = var.project
  vpc_name    = var.vpc_name
  auto_mode   = false
  subnet_name = var.subnet_name
  region      = var.region
  cidr        = var.cidr
}

module "instance" {
  source = "./modules/instance"
  //project        = var.project
  instance_name    = var.instance_name
  instance_type    = var.instance_type
  region           = var.region
  instance_image   = var.instance_image
  zone             = var.zone
  vpc_name         = var.vpc_name
  subnet_id        = module.vpc.subnet_id
  subnet_self_link = module.vpc.subnet_self_link
}