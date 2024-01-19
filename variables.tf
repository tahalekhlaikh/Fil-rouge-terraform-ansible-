variable "subnet_ip_range" {
  type    = string
  default = "192.168.1.0/24"
}

variable "ssh_key" {
  type    = string
  default = "mykey"
}
variable "path_file" {
  type    = string
  default = "./Ansible/mykey.pem"
}
variable "path_filee" {
  type    = string
  default = "./mykey.pem"
}
variable "image_id" {
  type    = string
  default = "00000000-0000-0000-0001-000000000102"
}

variable "flavor_id" {
  type    = string
  default = "5"
}

variable "external_network" {
  type    = string
  default = "external"
}

variable "external_network_id" {
  type    = string
  default = "7af4393b-6556-4d29-b68e-107d02709b96"
}
variable "chemin_file" {
  type    = string
  default = "./Ansible/host.ini"
}
variable "chemin_file_ip" {
  type    = string
  default = "./Ansible/ip.txt"
}
