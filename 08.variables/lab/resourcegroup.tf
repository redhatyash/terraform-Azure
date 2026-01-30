
resource "azurerm_resource_group" "we_rg01" {
#Arguments(Inputs)  = Attributes(Outputs)
  name = var.rg_name
  location = var.rg_location
  tags = var.tags

}