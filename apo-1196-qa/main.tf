# APO-1196 QA: changing var.marker on a redeploy always changes this resource, so the plan is never
# empty and the approval gate holds the deployment.
terraform {
  required_version = ">= 1.4.0"
}

variable "marker" {
  type = string
}

resource "terraform_data" "marker" {
  input = var.marker
}

output "marker" {
  value = terraform_data.marker.output
}
