variable "kv_name" {
  type = string
}
variable "rg_name" {
  type = string
}
variable "vm_name" {
  type = string
}
variable "location" {
  type = string
}
variable "nic_id" {
  type = list(string)
}
variable "os_disk_name" {
  type = string
}