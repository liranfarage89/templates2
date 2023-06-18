terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# test2
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "tf-test-bucket-litan"

  tags = {
    Name        = "Lirans bucket"
    Environment = "Dev"
  }
}
