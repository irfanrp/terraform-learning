
terraform {
  backend "s3" {
    bucket         = "my-bucket-tfstate-2022"
    key            = "workload/terraform-workshop/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    role_arn       = "arn:aws:iam::454003166800:role/tf-exec-s3"
    dynamodb_table = "my-table-tfstate-2022-lock"

  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}






