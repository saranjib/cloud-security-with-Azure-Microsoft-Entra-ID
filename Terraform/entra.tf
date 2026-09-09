data "azuread_client_config" "current" {}

resource "azuread_group" "developers" {
  display_name     = "Azure-Demo-Developers"
  security_enabled = true

  owners = [
    data.azuread_client_config.current.object_id
  ]
}

resource "azuread_group" "readers" {
  display_name     = "Azure-Demo-Readers"
  security_enabled = true

  owners = [
    data.azuread_client_config.current.object_id
  ]
}