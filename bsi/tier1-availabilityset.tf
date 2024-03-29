resource "azurerm_availability_set" "tier1-AvailabilitySet" {
  name                         = "WebAvailSet"
  location                     = "${azurerm_resource_group.ResourceGrps.location}"
  resource_group_name          = "${azurerm_resource_group.ResourceGrps.name}"
  platform_update_domain_count = "5"
  platform_fault_domain_count  = "3"

  tags = {
    environment = "Test"
    displayName = "AvailabilitySet"
  }
}
