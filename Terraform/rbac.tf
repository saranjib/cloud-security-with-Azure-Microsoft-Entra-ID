resource "azurerm_role_assignment" "developers" {
  scope                = azurerm_storage_account.entra-storage-acc.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_group.developers.object_id
}

resource "azurerm_role_assignment" "readers" {
  scope                = azurerm_storage_account.entra-storage-acc.id
  role_definition_name = "Reader"
  principal_id         = azuread_group.readers.object_id
}
