terraform {
  required_version = "1.2.2"

  required_providers {
    aws        = "~> 4.20.1"
    env = {
      source = "tchupp/env"
      version = "0.0.2"
    }
  }
}
