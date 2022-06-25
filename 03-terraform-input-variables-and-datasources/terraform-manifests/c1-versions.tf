# Terraform Block
terraform {
  required_version = "~> 1.2.3" # ~> comes under the version constraints concept, it means any increase in right most digit is going to be accepted
                                # which means 1.2.4, 1.2.5, 1.2.6 are going to be accepted but not 1.3.0 or 1.3.1 etc
                                # One important thing to note if we put it like "~> 1.2" then all 1.2.x, 1.2.y.... 1.3.x, 1.3.y are going to be accepted but not 2.1.x
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.19"
    }
  }
}

# Provider Block
provider "aws" {
    region = var.aws_region
    profile = "default"
}
