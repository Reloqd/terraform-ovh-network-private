
locals {
  network_private_name = var.network_private_name != null ? var.network_private_name : "private-network-${var.network_private_vlan_id}"
  network_private_regions = var.network_private_region != null ? var.network_private_region : ["EU-WEST-PAR"]
}

resource "ovh_cloud_project_network_private" "network_private" {
  service_name = var.network_private_service_name
  name         = local.network_private_name
  vlan_id      = var.network_private_vlan_id
  regions      = local.network_private_regions
}