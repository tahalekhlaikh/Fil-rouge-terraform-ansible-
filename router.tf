resource "openstack_networking_router_v2" "project_router" {
  name                ="project_router"
  external_network_id = var.external_network_id
}
