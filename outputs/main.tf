output "my_out" { value = "v1" }
resource "null_resource" "boom" {
  provisioner "local-exec" { command = "exit 1" }
}
