# ENG-2258 — Drift Actions QA fixtures

Throwaway templates for the Drift Actions QA block (Linear ENG-2258).

| Dir | Purpose |
| -- | -- |
| `ssm-pair` | Two root `aws_ssm_parameter` resources plus one inside `module.child`. Mutate a parameter out of band to produce an `unmanagedChange` cause; used for the A5 targeted-deploy check (root target, module-level target). |
| `ssm-single` | One `aws_ssm_parameter`. Drift on, drift off, for the clean-scan / `fixType` matrix. |
| `pinned` | Pinned `local` provider and a pinned registry module. Bumping the pins on a later commit produces `unappliedCommit`, `providerVersionChange` and `moduleVersionChange` without touching a cloud. `env0.yml` deletes the file after apply so every scan drifts. |

Every environment must set the terraform variable `qa_prefix` to something unique.
