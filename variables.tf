variable "ec2-bastion" {
  description = "Setup ec2 Bastion"
}

variable "ec2_bastion_security_group" {
  description = "Variable for ec2 Bastion Security Group"
  type        = any

}

variable "vpc" {
  description = "VPC id where the load balancer and other resources will be deployed."
  type        = any
}

