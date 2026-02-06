variable "rg_name" {
  type = string 
  description = "resource group name"
}

variable "location" {
  type = string
  description = "resource group location"
}
variable "vnet_name" {
  type = string
  description = "vnet name"
  
}

variable "address_space"{
  type = list(string)
  description = "address space"
}

variable "sub01" {

  type = string
  description = "subnet name"
  
}

variable "address_prefixes" {
  type = list(string)
  description = "address prefixes"
}
variable "nic_name" {
  type = string
}
variable "vm_name" {
  type = string
}
variable "kv_name" {
  type = string
}
variable "os_disk_name" {
  type = string
}