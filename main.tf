
terraform {
  backend "s3" {
    bucket         = "my-bucket-tfstate-2022"
    key            = "workload/terraform-workshop/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}






