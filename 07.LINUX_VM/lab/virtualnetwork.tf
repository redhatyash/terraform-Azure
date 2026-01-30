resource "azurerm_virtual_network" "we_vnet01" {
  name                = "viitor-we-pr-vnet01"
  location            = azurerm_resource_group.eastrg01.location
  resource_group_name = azurerm_resource_group.eastrg01.name
  address_space       = ["172.16.0.0/16","192.168.0.0/16"]
  tags = {
    "env"            = "Prod"
    "Owner"          = "B19"
    "Bussiness UNIT" = "IT"
  }
depends_on = [ azurerm_resource_group.eastrg01 ]
}

resource "azurerm_subnet" "we-vnet01_private_subnet01" {
  name                 = "private-subnet01"
  resource_group_name  = azurerm_resource_group.eastrg01.name
  virtual_network_name = azurerm_virtual_network.we_vnet01.name
  address_prefixes     = ["172.16.1.0/24"]
}

resource "azurerm_subnet" "we-vnet01_public_subnet01" {
  name                 = "public-subnet01"
  resource_group_name  = azurerm_resource_group.eastrg01.name
  virtual_network_name = azurerm_virtual_network.we_vnet01.name
  address_prefixes     = ["172.16.2.0/24"]
}


resource "azurerm_subnet" "we-vnet01_DB_subnet01" {
  name                 = "DB-subnet01"
  resource_group_name  = azurerm_resource_group.eastrg01.name
  virtual_network_name = azurerm_virtual_network.we_vnet01.name
  address_prefixes     = ["172.16.3.0/24"]
}


