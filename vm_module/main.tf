data "azurerm_key_vault" "kv" {
  name                = var.kv_name
  resource_group_name = "kv-rg"
}

data "azurerm_key_vault_secret" "username" {
  name         = "vm-username"
  key_vault_id = data.azurerm_key_vault.kv.id
}
data "azurerm_key_vault_secret" "password" {
  name         = "vm-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}


resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.rg_name
  network_interface_ids = var.nic_id
  size               = "Standard_B1s"
  admin_username = data.azurerm_key_vault_secret.username.value
 admin_password = data.azurerm_key_vault_secret.password.value


  disable_password_authentication = false


  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
   os_disk {
    name              = var.os_disk_name
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

 custom_data = base64encode(<<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl start nginx
  EOF
  )
}
