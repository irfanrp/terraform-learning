module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.0.0"

  name = var.vpc["name"]
  cidr = var.vpc["cidr_primary"]

  azs             = var.vpc["availability_zones"]
  private_subnets = var.vpc["private_subnet_cidr"]
  public_subnets  = var.vpc["public_subnet_cidr"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}