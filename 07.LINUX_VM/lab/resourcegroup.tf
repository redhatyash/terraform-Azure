## Resource Group Creation
resource "azurerm_resource_group" "eastrg01" {
  name     = "viitor-we-rg01"
  location = "westeurope"
  tags = {
    "env"            = "Prod"
    "Owner"          = "B19"
    "Bussiness UNIT" = "IT"
  }
}

## Resource Group Creation
resource "azurerm_resource_group" "eastrg02" {
  name     = "viitor-we-rg02"
  location = "westeurope"
  tags = {
    "env"            = "Prod"
    "Owner"          = "B19"
    "Bussiness UNIT" = "IT"
  }
}