resource "azurerm_resource_group" "east_rg01" {
  name     = "viitor-we-dev-rg01"
  location = "West Europe"
}


resource "azurerm_resource_group" "east_rg02" {
  name     = "viitor-we-dev-rg02"
  location = "eastus"
}