locals {
  project  = "web"
  app_port = 80
  domain   = "${local.project}.${var.base_domain}"
  tags = {
    project   = title(local.project) # web, #web
    Team      = "DevOps"
    Env       = title(var.env)
    Owner     = "Aina"
    ManagedBy = "Terraform"
  }

  region_to_tag_region = {
    us-east-1 = "use1"
    us-east-2 = "use2"
    us-west-1 = "usw1"
    us-west-1 = "usw2"
  }

  tags_region = lookup(local.region_to_tag_region, var.region, "undefined")

  name = "rtype-${var.env}-${local.project}-rtype"
}