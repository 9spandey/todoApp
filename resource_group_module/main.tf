resource "azurerm_resource_group" "rg" {
    name = var.rg_name
    location = var.location
  tags = {
    environment = "dev"
    owner = "platform-team"

  }
}
 #state change