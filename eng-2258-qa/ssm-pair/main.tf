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

variable "qa_prefix" {
  type = string
}

resource "aws_ssm_parameter" "alpha" {
  name  = "/eng2258/${var.qa_prefix}/alpha"
  type  = "String"
  value = "initial-alpha"
}

resource "aws_ssm_parameter" "beta" {
  name  = "/eng2258/${var.qa_prefix}/beta"
  type  = "String"
  value = "initial-beta"
}

module "child" {
  source    = "./child"
  qa_prefix = var.qa_prefix
}
