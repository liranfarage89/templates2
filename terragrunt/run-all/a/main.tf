module "blueprints-private-tf-module" {
  source = "e23f4e28-4304-49fd-a7cc-826a1952c3a8/blueprints-private-tf-module/env0"
  version = "1.0.1"
}

output "message" {
  value = module.blueprints-private-tf-module.message
}
