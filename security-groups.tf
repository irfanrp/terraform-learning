module "ec2_bastion_security_group" {
  source = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name        = var.ec2_bastion_security_group["name"]
  description = var.ec2_bastion_security_group["description"]
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port        = var.ec2_bastion_security_group["ingress_from_allowed_ports"]
      to_port          = var.ec2_bastion_security_group["ingress_to_allowed_ports"]
      protocol         = var.ec2_bastion_security_group["ingress_protocol"]
      description      = var.ec2_bastion_security_group["ingress_description"]
      cidr_blocks      = "0.0.0.0/0"
      ipv6_cidr_blocks = "::/0"
    },
  ]

  egress_with_cidr_blocks = [
    {
      from_port        = var.ec2_bastion_security_group["egress_from_allowed_ports"]
      to_port          = var.ec2_bastion_security_group["egress_to_allowed_ports"]
      protocol         = var.ec2_bastion_security_group["egress_protocol"]
      description      = var.ec2_bastion_security_group["egress_description"]
      cidr_blocks      = "0.0.0.0/0"
      ipv6_cidr_blocks = "::/0"
    },
  ]
}