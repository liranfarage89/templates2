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

resource "aws_ssm_parameter" "alpha" {
  name  = "/eng2258/${terraform.workspace}/alpha"
  type  = "String"
  value = "initial-alpha"
}

resource "aws_ssm_parameter" "beta" {
  name  = "/eng2258/${terraform.workspace}/beta"
  type  = "String"
  value = "initial-beta"
}

module "child" {
  source = "./child"
}
