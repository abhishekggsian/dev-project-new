resource "azurerm_linux_virtual_machine" "dev-vm" {
  for_each                        = var.devproject_VM
  name                            = each.value.vm_name
  resource_group_name             = each.value.rg_name
  location                        = each.value.location
  size                            = each.value.size
  admin_username                  = data.azurerm_key_vault_secret.data-user.value
  admin_password                  = data.azurerm_key_vault_secret.data-pass.value
  disable_password_authentication = false
  network_interface_ids           = [data.azurerm_network_interface.data-nic.id]

  os_disk {
    caching              = each.value.os_disk_caching
    storage_account_type = each.value.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = each.value.image_version
  }
}


