output "network_id" {
  description = "The ID of the private network"
  value       = ovh_cloud_project_network_private.this.id
}

output "service_name" {
  description = "The OVH Cloud project ID (service_name)"
  value       = ovh_cloud_project_network_private.this.service_name
}

output "network_name" {
  description = "The name of the private network"
  value       = ovh_cloud_project_network_private.this.name
}

output "vlan_id" {
  description = "The VLAN ID of the private network"
  value       = ovh_cloud_project_network_private.this.vlan_id
}

output "regions" {
  description = "List of regions where the private network exists"
  value       = ovh_cloud_project_network_private.this.regions
}

output "regions_attributes" {
  description = "Map of region attributes (region, status, openstackid)"
  value       = ovh_cloud_project_network_private.this.regions_attributes
}

output "regions_openstack_ids" {
  description = "Map of region name → OpenStack network ID"
  value       = ovh_cloud_project_network_private.this.regions_openstack_ids
}

output "status" {
  description = "Current status of the network (should normally be ACTIVE)"
  value       = ovh_cloud_project_network_private.this.status
}

output "type" {
  description = "Type of network: private or public"
  value       = ovh_cloud_project_network_private.this.type
}