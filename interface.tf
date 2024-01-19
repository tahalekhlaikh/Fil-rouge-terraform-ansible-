resource "openstack_networking_router_interface_v2" "project_router_interface" {
  router_id = "${openstack_networking_router_v2.project_router.id}"
  subnet_id = "${openstack_networking_subnet_v2.internal_subnet.id}"
}
