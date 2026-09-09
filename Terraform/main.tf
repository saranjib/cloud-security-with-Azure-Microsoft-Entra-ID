
resource "azurerm_resource_group" "rg-entra-security" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_storage_account" "entra-storage-acc" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg-entra-security.name
  location                 = azurerm_resource_group.rg-entra-security.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"

  min_tls_version           = "TLS1_2"

  public_network_access_enabled = true

  tags = {
    project     = "entra-id-security"
    environment = "demo"
  }
}