resource "null_resource" "fail" {
  count = local.does_not_exist
}
