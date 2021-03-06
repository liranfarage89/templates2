module "temporary_assumed_role" {
  source = "./iam_assumed_role"
  name = "test_liran_temporary"
  iam_policies = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]
  env0_aws_account_id = 170412844252 # dev account
  external_id = var.env0_deployer_external_id
}
