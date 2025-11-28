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
  validation {
    condition = contains([
      "GRA9",
      "SBG5",
      "DE1", "DE2",
      "UK1",
      "BHS5", "BHS7",
      "EU-WEST-PAR"
    ], var.network_private_region)
    error_message = "Invalid region. Allowed regions are: GRA9, SBG5, DE1, DE2, UK1, BHS5, BHS7, EU-WEST-PAR."
  }
}

variable "network_private_vlan_id" {
  description = "VLAN ID for the private network"
  type        = number
}
