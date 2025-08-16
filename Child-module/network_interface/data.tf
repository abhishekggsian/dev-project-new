data "azurerm_subnet" "data-subnet" {
  name                 = "data-subnet"
  virtual_network_name = "devopsproj-vnet"
  resource_group_name  = "devopsproj-rg"
}