package env0

# METADATA
# title: Allow if no changes
# description: Approve automatically if the plan has no changes

# Allow execution if no changes are detected in the Terraform plan
allow if {
  no_changes_detected
}

# Rule to check if all resources are "no-op"
no_changes_detected {
  not some i, j
  input.plan.resource_changes[i].change.actions[j] != "no-op"
}
