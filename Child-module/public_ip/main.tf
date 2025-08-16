resource "azurerm_public_ip" "dev-pip" {
  for_each            = var.devproject_pip
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku

  tags = {
    Environment = each.value.env
    Project     = each.value.proj
    Owner       = each.value.Owner
  }


}
