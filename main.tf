resource "azurerm_container_registry" "acr" {
  name                = "${var.acr_name_prefix}${random_string.random.result}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
}

