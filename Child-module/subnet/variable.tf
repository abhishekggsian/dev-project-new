variable "devproject-subnet" {
  type = map(object({
    name              = string
    vnet_name         = string
    rg_name           = string
    address_prefixes  = list(string)
  }))
  
}