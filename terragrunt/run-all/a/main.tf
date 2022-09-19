module "blueprints-private-tf-module" {
  source = "api-bors.dev.env0.com/214afc56-607b-447a-a533-5f3f6d608539/blueprints-private-tf-module/env0"
  version = "1.0.1"
}

output "message" {
  value = module.blueprints-private-tf-module.message
}
