resource "azurerm_storage_account" "storage" {
  name                = "asoteloterraformntier"
  resource_group_name = "${azurerm_resource_group.ResourceGrps.name}"

  location     = "${azurerm_resource_group.ResourceGrps.location}"
  account_tier = "Standard"
  account_replication_type = "LRS"


  tags = {
    environment = "test"
  }
}

resource "azurerm_storage_container" "blob1" {
  name                  = "vhds"
  resource_group_name   = "${azurerm_resource_group.ResourceGrps.name}"
  storage_account_name  = "${azurerm_storage_account.storage.name}"
  container_access_type = "private"
}
