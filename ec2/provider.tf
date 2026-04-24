terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" 
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  # No credentials here - Terraform will automatically 
  # pick up the (corrected) environment variables.
}