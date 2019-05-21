variable "chef_workstation_dl_url" {
  type    = "string"
  default = "https://packages.chef.io/files/stable/chef-workstation/0.2.53/el/6/chef-workstation-0.2.53-1.el6.x86_64.rpm"
}

variable "workstation_count" {
  default = 1
}

variable "workstation_ips" {
  default = []
}

variable "ssh_password" {
  type    = "string"
}

variable "ssh_user" {
  type    = "string"
}
