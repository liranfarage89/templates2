terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

module "label" {
  source  = "cloudposse/label/null"
  version = "0.24.1"
  name    = "eng2258"
}

resource "local_file" "pinned" {
  content  = module.label.id
  filename = "${path.module}/pinned.txt"
}
