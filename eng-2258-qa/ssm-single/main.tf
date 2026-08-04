terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.100.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "solo" {
  name  = "/eng2258/${terraform.workspace}/solo"
  type  = "String"
  value = "initial-solo"
}
