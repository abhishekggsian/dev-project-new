resource "azurerm_network_security_group" "dev-nsg" {
  for_each            = var.devproject-nsg
  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

}

