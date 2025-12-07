variable "network_service_name" {
  description = "OVH Cloud Project ID"
  type        = string
}

variable "network_name" {
  description = "Name of the private network"
  type        = string
  default     = null

  validation {
    condition     = var.network_name == null || length(var.network_name) > 0
    error_message = "If provided, the network_name must not be an empty string."
  }
}

variable "network_region" {
  description = "Regions where the private network will be available"
  type        = list(string)
  default     = null

  validation {
    condition     = var.network_region == null || length(var.network_region) > 0
    error_message = "If provided, the network_region must not be an empty list."
  }
}

variable "network_vlan_id" {
  description = "VLAN ID for the private network (> 0)"
  type        = number

  validation {
    condition     = var.network_vlan_id > 0
    error_message = "The network_vlan_id must be greater than 0."
  }
}