resource "azurerm_public_ip" "pip" {
  name                = "${local.resource_prefix}-pip"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  tags                = local.common_tags
}
