module "temporary_assumed_role" {
  source = "./modules/iam_assumed_role"
  name = "test_liran_temporary"
  iam_policies = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]
  env0_aws_account_id = 170412844252 # dev account
  external_id = var.env0_deployer_external_id
}
