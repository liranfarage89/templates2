resource "null_resource" "apo_679_qa_working" {
  triggers = {
    always_run = timestamp()
  }
}
