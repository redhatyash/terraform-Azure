output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "network_interface_id" {
  value = azurerm_network_interface.nic.id
}

output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}

output "linux_vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}

#Optional

output "admin_username" {
  value     = var.admin_username
  sensitive = true
}