module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc["name"]
  cidr = var.vpc["cidr_primary"]

  azs             = var.vpc["availability_zones"]
  private_subnets = var.vpc["private_subnet_cidr"]
  public_subnets  = var.vpc["public_subnet_cidr"]

  enable_nat_gateway = var.vpc["enable_nat_gateway"]
  enable_vpn_gateway = var.vpc["enable_vpn_gateway"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}