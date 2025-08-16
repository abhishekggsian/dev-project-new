variable "devproject_nic" {
  type = map(object({
    nic_name                      = string
    rg_name                       = string
    location                      = string
    ip_config_name                = string
     private_ip_address_allocation = string
  }))

}