terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0"
    }
    template = {
      source = "hashicorp/template"
    }
    time = {
      source = "hashicorp/time"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
  }

  required_version = ">= 0.13"
}

