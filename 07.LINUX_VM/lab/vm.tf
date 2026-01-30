
resource "azurerm_linux_virtual_machine" "web_vm01" {
  name                = "viitor-we-pr-webvm01"
  resource_group_name = azurerm_resource_group.eastrg01.name
  # resource_group_name = "viitor-we-rg01"
  location            = azurerm_resource_group.eastrg01.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  disable_password_authentication = false
  admin_password = "Password@123"
  network_interface_ids = [azurerm_network_interface.we_vm01_NIC01.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}