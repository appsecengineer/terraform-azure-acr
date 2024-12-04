variable "acr_name_prefix" {
  description = "Prefix for the ACR name"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy ACR"
  type        = string
}

variable "sku" {
  description = "The SKU for the ACR (e.g., Standard, Premium)"
  type        = string
  default     = "Standard"
}

variable "admin_enabled" {
  description = "Specifies whether admin user is enabled on the ACR"
  type        = bool
  default     = false
}

variable "key_vault_key_id" {
  description = "The ID of the Key Vault key to be used for encryption"
  type        = string
  default     = null
}

variable "identity_client_id" {
  description = "The client ID of the user-assigned identity for encryption"
  type        = string
  default     = null
}

variable "enable_encryption" {
  description = "Enable encryption using a Key Vault key"
  type        = bool
  default     = false
}

variable "enable_user_assigned_identity" {
  description = "Enable UserAssigned identity for the resource"
  type        = bool
  default     = false
}

variable "user_assigned_identity_ids" {
  description = "A list of UserAssigned identity IDs"
  type        = list(string)
  default     = []
}
