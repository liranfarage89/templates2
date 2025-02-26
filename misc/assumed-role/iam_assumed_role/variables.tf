variable "region" {
  default = "us-east-1"
}

variable "name" {
  type = string
  description = "role name"
}

variable "iam_policies" {
  type = list
  description = "List of IAM policies ARNs to attach to the IAM user"
}

variable "env0_aws_account_id" {
  type = number
  description = "env0 account id in aws. prod: 913128560467, dev: 170412844252"
}

variable "external_id" {
  type = string
  description = "sts external id"
}

variable "max_session_duration" {
  type = number
  default = 18000
  description = "assumed role max session duration - minimal requirement for env0"
}
