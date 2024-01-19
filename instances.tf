resource "openstack_compute_keypair_v2" "keypair" {
  name = var.ssh_key
  provisioner "local-exec" {
   command = "echo '${self.private_key}'>> ${var.path_file}; chmod 600 ${var.path_file}"
  }
}

resource "openstack_compute_instance_v2" "cluster-node" {

  name            = "node"
  image_id        = var.image_id
  flavor_id       = var.flavor_id
  key_pair        = openstack_compute_keypair_v2.keypair.name
  security_groups = ["${openstack_compute_secgroup_v2.application_secgroup.name}"]
  depends_on      = [openstack_networking_subnet_v2.internal_subnet]
  network {
    name = "project-net"
  }
}


resource "openstack_networking_floatingip_v2" "application" {
  pool = var.external_network
}

resource "openstack_compute_floatingip_associate_v2" "application" {

  floating_ip = "${openstack_networking_floatingip_v2.application.address}"
  instance_id = "${openstack_compute_instance_v2.cluster-node.id}"
  depends_on  = [openstack_networking_router_v2.project_router]
  provisioner "local-exec" {
   command = "echo 'vapormap	ansible_host=${self.floating_ip}	ansible_user=ubuntu	ansible_ssh_private_key_file=${var.path_filee}' >> ${var.chemin_file}; echo '${self.floating_ip}' >> ${var.chemin_file_ip}"

  }


}

