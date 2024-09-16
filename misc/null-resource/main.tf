provider "null" {}

resource "null_resource" "example" {
  triggers = {
    invalid_key = nonexistent_value
  }
}