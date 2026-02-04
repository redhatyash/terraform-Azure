locals {
  common_tags = var.common_tags
  applicationid = var.applicationid
  Bussiness_Unit = var.Bussiness_Unit
  environment   = var.environment
  #location  = "eastus"
}

module "east_rg01" {
  source = "../0.Infra_modules/ResourceGroup"
  rg_name   = "${local.applicationid}-${local.Bussiness_Unit}-${local.environment}-${var.east_rg01}"
  rg_location   = var.east_location
  tags = local.common_tags
}
/*
module "east_rg02" {
  source = "../0.Infra_modules/ResourceGroup"
  rg_name   = "viitor-east-dev-rg02"
  rg_location   = "eastus"
  tags = local.common_tags
}


module "west_rg01" {
  source = "../0.Infra_modules/ResourceGroup"
  rg_name   = "viitor-west-dev-rg01"
  rg_location   = "westus"
  tags = local.common_tags
}

module "east_vnet01" {
  source = "../0.Infra_modules/virtualNetwork"
    rg_name = "viitor-east-dev-rg01"
    vent_name = "viitor-east-dev-vnet01"
    vnet_address_space = ["172.16.0.0/16"]
    vnet_private_subnet01 = "private-subnet01"
    vnet_private_subnet_address_space = ["172.16.1.0/24"]
    vnet_public_subnet01 = "public-subnet01"
    vnet_public_subnet_address_space = ["172.16.2.0/24"]
    vnet_db_subnet01 = "DB-Subnet01"
    vnet_db_subnet_address_space = ["172.16.3.0/24"]
    tags = local.common_tags
}

*/