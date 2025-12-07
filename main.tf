
locals {
  # Set default values if variables are not provided
  network_name    = var.network_name != null && length(var.network_name) > 0 ? var.network_name : "private-network-${var.network_vlan_id}"
  network_regions = var.network_region != null && length(var.network_region) > 0 ? var.network_region : ["EU-WEST-PAR"]
}

resource "ovh_cloud_project_network_private" "this" {
  service_name = var.network_service_name
  name         = local.network_name
  vlan_id      = var.network_vlan_id
  regions      = local.network_regions
}