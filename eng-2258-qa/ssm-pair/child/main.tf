resource "aws_ssm_parameter" "gamma" {
  name  = "/eng2258/${terraform.workspace}/gamma"
  type  = "String"
  value = "initial-gamma"
}
