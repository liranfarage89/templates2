package env0

# METADATA
# title: Allow if no changes
# description: Approve automatically if the plan has no changes

# Allow execution if there are no changes in the Terraform plan
allow if {
  not any_resources_with_change
}

# Check if there are any resources with changes
any_resources_with_change {
  some i, j
  input.plan.resource_changes[i].change.actions[j] != "no-op"
}
