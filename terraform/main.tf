module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source             = "./modules/ec2"
  subnet_id          = module.vpc.subnet_id
  security_group_ids = [module.security_group.security_group_id]
  key_name           = var.key_name
  instance_type      = var.instance_type
  ami_id             = var.ami_id

  tags = {
    Name = "EC2-Instance"
  }
}
