terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "srikar-remote-state"
    key    = "expense-terrr-eb10"
    region = "us-east-1"
    dynamodb_table = "srikar-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}