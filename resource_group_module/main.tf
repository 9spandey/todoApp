resource "azurerm_resource_group" "rg" {
    name = var.rg_name
    location = var.location
  tags = {
    environment = "prod"
    owner = "platform-team"

  }
}
 #state change
 # main branch update
# cherry-pick demo change
# temp test cherry-pick comment


