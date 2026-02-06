variable "vnet_name" {
    type = string
    description = "vnet name"
}
variable "location" {
    type = string
    description = "vnet location"
}
variable "rg_name" {
    type = string
    description = "resource group name"
}
variable "address_space" {
  type = list(string)
  description = "address space range"
}