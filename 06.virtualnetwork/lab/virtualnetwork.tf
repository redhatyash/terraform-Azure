resource "azurerm_virtual_network" "east_us_vnet01" {
  name                = "viitor-eastus-pr-vnet01"
  address_space       = ["172.16.0.0/16"]
  location            = azurerm_resource_group.east_rg01.location
  resource_group_name = azurerm_resource_group.east_rg01.name
  depends_on = [ azurerm_resource_group.east_rg01 ]
}


resource "azurerm_subnet" "private_sub_east_us_vnet01" {
  name                 = "private-subnet01"
  resource_group_name  = azurerm_resource_group.east_rg01.name
  virtual_network_name = azurerm_virtual_network.east_us_vnet01.name
  address_prefixes     = ["172.16.1.0/24"]
  #depends_on = [ azurerm_virtual_network.east_us_vnet01, azurerm_resource_group.east_rg01   ]
}

resource "azurerm_subnet" "public_sub_east_us_vnet01" {
  name                 = "public-subnet01"
  resource_group_name  = azurerm_resource_group.east_rg01.name
  virtual_network_name = azurerm_virtual_network.east_us_vnet01.name
  address_prefixes     = ["172.16.2.0/24"]
  #depends_on = [ azurerm_virtual_network.east_us_vnet01, azurerm_resource_group.east_rg01   ]
}