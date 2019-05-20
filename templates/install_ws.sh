#!/bin/bash

sudo yum install -y vim git
sudo rpm -uhv ${chef_workstation_dl_url}
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
hab license accept
