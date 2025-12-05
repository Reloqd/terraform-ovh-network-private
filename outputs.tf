output "network_id" {
  description = "OVH network ID"
  value       = ovh_cloud_project_network_private.network_private.id
}

output "network_name" {
  description = "Network name"
  value       = ovh_cloud_project_network_private.network_private.name
}

output "network_regions" {
  description = "Regions associated with the private network"
  value       = ovh_cloud_project_network_private.network_private.regions
}

output "network_regions_openstack_ids" {
  description = "Mapping of region → OpenStack network ID"
  value       = ovh_cloud_project_network_private.network_private.regions_openstack_ids
}
