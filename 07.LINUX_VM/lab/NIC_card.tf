resource "azurerm_network_interface" "we_vm01_NIC01" {
  name                = "vm01-nic"
  location            = azurerm_resource_group.eastrg01.location
  resource_group_name = azurerm_resource_group.eastrg01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.we-vnet01_private_subnet01.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id  = azurerm_public_ip.we_vm01_pip01.id
  }
}