resource "openstack_networking_network_v2" "internal_net" {
  name                = "project-net"
  admin_state_up      = true
}

resource "openstack_networking_subnet_v2" "internal_subnet" {
  name            = "project-subnet"
  network_id      = "${openstack_networking_network_v2.internal_net.id}"
  ip_version      = 4
  cidr            = var.subnet_ip_range
  dns_nameservers=["192.44.75.10","192.108.115.2"]
}
