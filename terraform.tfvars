###################################################################################################
### VPC
###################################################################################################

ec2-bastion = {
  "name"          = "bastion"
  "ami"           = "ami-0557a15b87f6559cf"
  "instance_type" = "t2.micro"
}

ec2_bastion_security_group = {
  name        = "bastion-nonprod"
  description = "Bastion nonprod Security Group"

  ingress_protocol           = "tcp"
  ingress_from_allowed_ports = 22
  ingress_to_allowed_ports   = 22
  ingress_description        = "SSH Access"

  egress_protocol           = "-1"
  egress_from_allowed_ports = 0
  egress_to_allowed_ports   = 0
  egress_description        = "All"

}

###################################################################################################
### VPC
###################################################################################################

vpc = {
  "name"                = "my-vpc-testing"
  "cidr_primary"        = "10.0.0.0/16"
  "public_subnet_cidr"  = ["10.0.1.0/24", "10.0.2.0/24"]
  "private_subnet_cidr" = ["10.0.3.0/24", "10.0.4.0/24"]
  "availability_zones"  = ["us-east-1a", "us-east-1b"]
  enable_vpn_gateway    = true
  enable_nat_gateway    = true
}

