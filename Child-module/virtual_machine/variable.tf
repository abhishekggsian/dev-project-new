variable "devproject_VM" {
  type = map(object({
    vm_name                     = string
    rg_name                     = string
    location                    = string
    size                        = string
    
    os_disk_caching             = string
    os_disk_storage_account_type = string
    image_publisher             = string
    image_offer                 = string
    image_sku                   = string
    image_version               = string
  }))
  
}