resource "azurerm_virtual_network" "vnet-dev" {
  for_each            = var.devproject-vnet
  name                = each.value.vnet_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  address_space       = each.value.address_space

}

