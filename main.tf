data "template_file" "install_ws" {
  template = "${file("${path.module}/templates/install_ws.sh")}"

  vars {
    chef_workstation_version = "${var.chef_workstation_version}",
    help_file_url            = "${var.help_file_url}",
    hab_version              = "${var.hab_version}"
  }
}

resource "null_resource" "workstation_base_install" {
  count = "${var.workstation_count}"

  triggers {
    template = "${data.template_file.install_ws.rendered}"
  }

  connection {
    type     = "ssh"
    user     = "${var.ssh_user}"
    password = "${var.ssh_password}"
    host     = "${var.workstation_ips[count.index]}"
  }

  provisioner "file" {
    destination = "/home/${var.ssh_user}/install_ws.sh"
    content     = "${data.template_file.install_ws.rendered}"
  }

  provisioner "remote-exec" {
    inline = [
      "bash -x /home/${var.ssh_user}/install_ws.sh"
    ]
  }
}
