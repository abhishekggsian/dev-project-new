variable "dev-rg" {
  type = map(object({
    rg_name  = string
    location = string
    env      = string
    proj     = string
    Owner    = string
  }))
}
variable "dev-vnet" {
  type = map(object({
    vnet_name          = string
    rg_name            = string
    location           = string
    address_space      = list(string)
  }))
}

variable "dev-subnet" {
  type = map(object({
    name              = string
    vnet_name         = string
    rg_name           = string
    address_prefixes  = list(string)
  }))
  
}

variable "dev-nsg" {
  type = map(object({
    nsg_name = string
    location = string
    rg_name  = string
  }))
  
}

variable "dev_nic" {
  type = map(object({
    nic_name                      = string
    rg_name                       = string
    location                      = string
    ip_config_name                = string
    private_ip_address_allocation = string
  }))

}

variable "dev_VM" {
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