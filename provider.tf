terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  assume_role {
    role_arn    = var.assume_role
    external_id = var.external_id
  }
  region = "ap-south-01"

}