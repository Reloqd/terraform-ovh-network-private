variable "network_private_service_name" {
  description = "OVH Cloud Project ID"
  type        = string
}

variable "network_private_name" {
  description = "Name of the private network"
  type        = string
}

variable "network_private_region" {
  description = "Regions where the private network will be available"
  type        = list(string)
  default     = []

  validation {
    condition = alltrue([
      for r in var.network_private_region :
      contains([
        "GRA9",
        "SBG5",
        "DE1", "DE2",
        "UK1",
        "BHS5", "BHS7",
        "EU-WEST-PAR"
      ], r)
    ])
    error_message = "Each region must be one of: GRA9, SBG5, DE1, DE2, UK1, BHS5, BHS7, EU-WEST-PAR."
  }
}

variable "network_private_vlan_id" {
  description = "VLAN ID for the private network"
  type        = number
}
