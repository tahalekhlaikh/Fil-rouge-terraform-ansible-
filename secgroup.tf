

resource "openstack_compute_secgroup_v2" "application_secgroup" {
  name        = "application_secgroup"
  description = "application security group"
  
   rule {
    from_port   = 8000
    to_port     = 8000
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = 5000
    to_port     = 5000
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
  rule {
  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
  cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = 1
    to_port     = 65535
    ip_protocol = "udp"
    cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = 1
    to_port     = 65535
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = -1
    to_port     = -1
    ip_protocol = "icmp"
    cidr        = "0.0.0.0/0"
  }



}



