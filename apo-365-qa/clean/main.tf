resource "terraform_data" "state" {
  input = "steady"
}

output "state" {
  value = terraform_data.state.output
}
