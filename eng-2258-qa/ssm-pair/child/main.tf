variable "qa_prefix" {
  type = string
}

resource "aws_ssm_parameter" "gamma" {
  name  = "/eng2258/${var.qa_prefix}/gamma"
  type  = "String"
  value = "initial-gamma"
}
