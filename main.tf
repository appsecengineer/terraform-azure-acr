resource "azurerm_container_registry" "acr" {
  name                = "${var.acr_name_prefix}${random_string.random.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  
  dynamic "identity" {
    for_each = var.enable_user_assigned_identity ? [1] : []
    content {
      type         = "UserAssigned"
      identity_ids = var.user_assigned_identity_ids
    }
  }

  dynamic "encryption" {
    for_each = var.enable_encryption && var.key_vault_key_id != null && var.identity_client_id != null ? [1] : []
    content {
      key_vault_key_id   = var.key_vault_key_id
      identity_client_id = var.identity_client_id
    }
  }
}

