variable "chef_workstation_version" {
  type    = "string"
  default = "0.2.48"
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

variable "help_file_url" {
  type    = "string"
  default = ""
}

variable "hab_version" {
  type    = "string"
  default = "0.81.0"
}
