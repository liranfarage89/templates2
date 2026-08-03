# APO-365 QA fixture

Two identical Terragrunt units. `polluted/` has a `before_hook` that echoes a
bare `networking` line to stdout on `plan` and `show`; `clean/` does not.

Expected drift detection results on a PR env carrying the APO-365 fix:

| unit        | plan output | drift status |
|-------------|-------------|--------------|
| `clean/`    | no changes  | `OK`         |
| `polluted/` | no changes  | `ERROR` (plan JSON unparseable, previously a false `DRIFTED`) |
