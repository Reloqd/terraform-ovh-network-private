variable "network_private_service_name" {
  description = "OVH Cloud Project ID"
  type        = string
}

variable "network_private_name" {
  description = "Name of the private network"
  type        = string
}

variable "network_private_region" {
  description = "Region where the network will be created"
  type        = list(string)
  default     = []
}

variable "network_private_vlan_id" {
  description = "VLAN ID for the private network"
  type        = number
}
