# APO-1016 QA: pulls a module from the pr22722 private registry, so terraform init sends the
# deployer token through the shared API Gateway authorizer.
module "label" {
  source  = "api-pr22722.dev.env0.com/a009c238-b477-4227-8d8a-5a1ed6e1494d/label/null"
  version = "0.25.0"
  name    = "apo-1016-qa"
}

output "id" {
  value = module.label.id
}
