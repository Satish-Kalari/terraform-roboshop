terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0" #AWS Provider version, not terraform
    }
  }
  #storeing terraform.tfstate in aws s3 bucket
  backend "s3" {
    bucket = "kalri-test-bucket"
    key = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "kalari-test-table"    
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}