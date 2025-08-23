terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
    backend "s3" {
      bucket = "workshop-s3-bucket-for-remote-backend"
      key = "networking-stack/terraform.tfstate"
      region = "us-east-2"
      dynamodb_table = "workshop-s3-state-locking-tablevn"
    }
    
}


provider "aws" {
  region = var.auth.region
  assume_role {
    role_arn = var.auth.assume_role_arn
  }
  default_tags {
    tags = var.tags
  }
}
