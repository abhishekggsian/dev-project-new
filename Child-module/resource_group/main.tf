resource "azurerm_resource_group" "devopsproj" {
  for_each = var.devproject-rg
  name     = each.value.rg_name
  location = each.value.location
  tags = {
    Envernment = each.value.env
    Project    = each.value.proj
    Owner      = each.value.Owner
  }

}


