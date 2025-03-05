package env0

import future.keywords.in
import future.keywords.if
#####
# filename: cost-policy.rego
# purpose: restrict users from deploying over a certain amount of (estimated) cost.
# note: $30/month with cost_approvers hard_coded.
#####

format(meta) := meta.description

has_key(x, k) {
	_ = x[k]
}


allow if {
  noop.allow
}



# METADATA
# title: allow if no changes
# description: approve automatically if the plan has no changes
noop.allow if {
  not any_resources_with_change
}

any_resources_with_change {
  input.plan.resource_changes[_].change.actions[_] != "no-op"
}
