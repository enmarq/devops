# Configure the Azure ARM provider
provider "azurerm" {
}

# Create a resource group
resource "azurerm_resource_group" "ResourceGrps" {
  name     = "bsi-uks-ipp01-rg"
  location = "uk south"
}
