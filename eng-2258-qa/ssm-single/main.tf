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

resource "aws_ssm_parameter" "solo" {
  name  = "/eng2258/${var.qa_prefix}/solo"
  type  = "String"
  value = "initial-solo"
}
