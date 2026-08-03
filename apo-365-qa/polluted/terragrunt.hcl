# APO-365 repro: a before_hook that writes to stdout, like the customer's
# get_defaults / get_environment hooks. env0 captures `terragrunt show -json`
# with a raw shell redirect, so this line lands inside env0_tf_plan.json and
# makes it unparseable.
terraform {
  before_hook "get_defaults" {
    commands = ["plan", "show"]
    execute  = ["bash", "-c", "echo networking"]
  }
}
