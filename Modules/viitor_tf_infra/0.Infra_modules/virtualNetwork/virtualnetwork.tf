resource "azurerm_virtual_network" "vnet" {
  name                = var.vent_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = var.vnet_address_space
  tags = var.tags
}

resource "azurerm_subnet" "vnet_private_subnet01" {
  name                 = var.vnet_private_subnet01
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vnet_private_subnet_address_space
}

resource "azurerm_subnet" "vnet_public_subnet01" {
  name                 = var.vnet_public_subnet01
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vnet_public_subnet_address_space
}


resource "azurerm_subnet" "vnet_DB_subnet01" {
  name                 = var.vnet_db_subnet01
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vnet_db_subnet_address_space
}


