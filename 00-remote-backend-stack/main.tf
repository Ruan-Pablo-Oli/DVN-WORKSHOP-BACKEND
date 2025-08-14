terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}


provider "aws" {
  
  assume_role {
    role_arn = var.terraform_role_arn
  }

  default_tags {
    tags = var.tags
  }
}
