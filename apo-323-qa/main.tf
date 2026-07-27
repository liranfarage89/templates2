terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    # Declared but never configured or used. It only exists to make
    # .terraform/providers big enough (~700MB) to see the archive shrink.
    aws = {
      source  = "hashicorp/aws"
      version = "5.100.0"
    }
  }
}

resource "random_id" "qa" {
  byte_length = 8
}

resource "null_resource" "qa" {
  triggers = {
    id = random_id.qa.hex
  }
}

output "qa_id" {
  value = random_id.qa.hex
}
