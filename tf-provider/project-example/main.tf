terraform {
  required_providers {
    env0 = {
      source = "env0/env0"
      #version = "1.26.0"
    }
  }
}

provider "env0" {
    api_endpoint = "https://api-dev.dev.env0.com"
}

resource "env0_project" "test_liran" {
  name = "Liran"
}

resource "env0_aws_cost_credentials" "aws_cost_credentials" {
  name     = "cost credentials"
  arn      = "arn"
  duration = 3600
}

resource "env0_cost_credentials_project_assignment" "cost_project_assignment" {
  credential_id = resource.env0_aws_cost_credentials.aws_cost_credentials.id
  project_id    = resource.env0_project.test_liran.id
}
