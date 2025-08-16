variable "devproject-rg" {
  type = map(object({
    rg_name  = string
    location = string
    env      = string
    proj     = string
    Owner    = string
  }))
}
