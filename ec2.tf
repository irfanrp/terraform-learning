module "ec2-bastion" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 3.0"
  name                   = var.ec2-bastion["name"]
  ami                    = var.ec2-bastion["ami"]
  instance_type          = var.ec2-bastion["instance_type"]
  monitoring             = true
  vpc_security_group_ids = [module.ec2_bastion_security_group.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  key_name               = "terraform"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

