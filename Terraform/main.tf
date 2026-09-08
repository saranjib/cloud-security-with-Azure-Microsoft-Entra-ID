
resource "azurerm_resource_group" "rg-entra-security" {
  name     = var.resource_group_name
  location = var.location
}
