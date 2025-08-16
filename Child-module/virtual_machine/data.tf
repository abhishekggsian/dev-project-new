data "azurerm_network_interface" "data-nic" {
  name                = "devopsproj-nic"        # NIC ka naam
  resource_group_name = "devopsproj-rg"         # RG jisme NIC hai
}

data "azurerm_key_vault" "data-keyvault" {
  name                = "devkeyvault21"
  resource_group_name = "sanjayrg"
}

data "azurerm_key_vault_secret" "data-user" {
  name         = "vmusername" # tumhare secret ka naam
  key_vault_id = data.azurerm_key_vault.data-keyvault.id
}
data "azurerm_key_vault_secret" "data-pass" {
  name         = "vmpassword" # tumhare secret ka naam
  key_vault_id = data.azurerm_key_vault.data-keyvault.id
}