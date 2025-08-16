# Resource Group
module "dev-rg" {
  source        = "../../Child-module/resource_group"
  devproject-rg = var.dev-rg

}
# Virtual Network
module "dev-vnet" {
  depends_on      = [module.dev-rg]
  source          = "../../Child-module/virtual_network"
  devproject-vnet = var.dev-vnet

}
# Subnet
module "dev-subnet" {
  depends_on        = [module.dev-vnet]
  source            = "../../Child-module/subnet"
  devproject-subnet = var.dev-subnet

}
# Network Security Group

module "dev-nsg" {
  depends_on     = [module.dev-rg]
  source         = "../../Child-module/network_security_group"
  devproject-nsg = var.dev-nsg

}
# Network Interface

module "dev-nic" {
  depends_on = [module.dev-subnet, module.dev-nsg]

  source         = "../../Child-module/network_interface"
  devproject_nic = var.dev_nic
}

# Virtual Machine

module "dev-VM" {
  depends_on    = [module.dev-rg, module.dev-nic, module.dev-vnet]
  source        = "../../Child-module/virtual_machine"
  devproject_VM = var.dev_VM
}
