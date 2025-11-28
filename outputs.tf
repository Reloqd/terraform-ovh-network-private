
output "network_id" {
  description = "Terraform ID of the private network"
  value       = ovh_cloud_project_network_private.network_private.id
}
output "name" {
  description = "Name of the private network"
  value       = ovh_cloud_project_network_private.network_private.name
}
output "region_openstack_ids" {
  description = "OpenStack network IDs per region (needed for subnets)"
  value       = ovh_cloud_project_network_private.network_private.regions_openstack_ids
}