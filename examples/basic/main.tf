module "mesh" {
  source = "github.com/pbs-common/terraform-aws-app-mesh-module?ref=0.0.30"

  organization = var.organization
  environment  = var.environment
  product      = var.product
  repo         = var.repo
}

module "vgw" {
  source = "../.."

  primary_hosted_zone = var.primary_hosted_zone
  mesh_name           = module.mesh.name

  organization = var.organization
  environment  = var.environment
  product      = var.product
  owner        = var.owner
  repo         = var.repo
}
