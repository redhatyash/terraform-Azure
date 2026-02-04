locals {
  project_name = "viitor"
  environment  = "prod"

  resource_prefix = "${local.project_name}-${local.environment}"

  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    Owner       = "PKsir"
  }
}
