variable "devproject_pip" {
  type = map(object({
    pip_name            = string
    rg_name             = string
    location            = string
    allocation_method   = string
    sku                 = string
    env                 = string
    proj                = string
    Owner               = string
  }))
}