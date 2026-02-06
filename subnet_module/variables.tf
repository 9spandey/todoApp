variable "sub01" {
    type = string
    description = "subnet name 01"
}

variable "rg_name" {
    type = string
    description = "resource group name"
  
}

variable "vnet_name" {
    type = string
    description = "vitrual networks name"
  
}

variable "address_prefixes" {
  type = list(string)
  description = "address prefixes for subnet"
}