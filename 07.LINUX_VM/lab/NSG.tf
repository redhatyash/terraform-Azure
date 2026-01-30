resource "azurerm_network_security_group" "we_nsg01" {
  name                = "viitor-we-pr-nsg01"
  location            = azurerm_resource_group.eastrg01.location
  resource_group_name = azurerm_resource_group.eastrg01.name

  security_rule {
    name                       = "Allow_22"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
    security_rule {
    name                       = "Allow_80"
    priority                   = 2000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }


  tags = {
    "env"            = "Prod"
    "Owner"          = "B19"
    "Bussiness UNIT" = "IT"
  }

}

#######3 NSG Subnet Association
resource "azurerm_subnet_network_security_group_association" "we_nsg01_association_we_vnet01_private_subnet01" {
  subnet_id                 = azurerm_subnet.we-vnet01_private_subnet01.id
  network_security_group_id = azurerm_network_security_group.we_nsg01.id
}


