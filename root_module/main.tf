module "rg" {
    source = "../resource_group_module"
    rg_name = var.rg_name
    location = var.location
}

module "vnet" {
  source = "../vnet_module"
  vnet_name = var.vnet_name
  location = var.location
  rg_name = module.rg.rg_name
  address_space = var.address_space
}

module "sub01" {
 
 source = "../subnet_module"
  sub01 = var.sub01
  vnet_name = module.vnet.vnet_name
  rg_name = var.rg_name
  address_prefixes = var.address_prefixes
 
}

module "nic" {
  source = "../nic_module"
  nic_name = var.nic_name
  location = var.location
  rg_name = module.rg.rg_name
  subnet_id = module.sub01.subnet_id
}

module "vm" {
  source = "../vm_module"
  vm_name = var.vm_name
  kv_name = var.kv_name
  rg_name = module.rg.rg_name
  location = var.location
  nic_id = module.nic.nic_id
  os_disk_name = var.os_disk_name

}