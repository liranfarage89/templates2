package env0

# METADATA
# title: allow if no changes
# description: approve automatically if the plan has no changes

allow if {
  noop.allow
}

noop.allow if {
  not any_resources_with_change
}

any_resources_with_change {
  input.plan.resource_changes[_].change.actions[_] != "no-op"
}
