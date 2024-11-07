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
