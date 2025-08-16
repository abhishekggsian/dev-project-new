resource "azurerm_network_interface" "dev_nic" {
  for_each            = var.devproject_nic
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  ip_configuration {
    name                          = each.value.ip_config_name
    subnet_id                     = data.azurerm_subnet.data-subnet.id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}


