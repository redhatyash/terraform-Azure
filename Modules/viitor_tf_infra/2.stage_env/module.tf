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

module "east_sa01" {
  source = "../0.Infra_modules/storageaccount"
    rg_name   = "${local.applicationid}-${local.Bussiness_Unit}-${local.environment}-${var.east_rg01}"
    sa_name  = var.storage_name01
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
    tags = local.common_tags
    depends_on = [ module.east_rg01 ]
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
*/
module "east_vnet01" {
  source = "../0.Infra_modules/virtualNetwork"
    rg_name = "viitor-east-stage-rg01"
    vent_name = "viitor-east-stage-vnet01"
    vnet_address_space = ["192.168.0.0/16"]
    vnet_private_subnet01 = "stageprivate-subnet01"
    vnet_private_subnet_address_space = ["192.168.1.0/24"]
    vnet_public_subnet01 = "stagepublic-subnet01"
    vnet_public_subnet_address_space = ["192.168.2.0/24"]
    vnet_db_subnet01 = "stageDB-Subnet01"
    vnet_db_subnet_address_space = ["192.168.3.0/24"]
    tags = local.common_tags
}
