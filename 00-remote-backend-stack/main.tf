terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}


provider "aws" {
  
  profile = var.auth.profile


  default_tags {
    tags = var.tags
  }
}