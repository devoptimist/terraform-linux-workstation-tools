#!/bin/bash

sudo yum install -y vim git
sudo rpm -Uhv ${chef_workstation_dl_url}
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
sudo hab license accept
hab license accept
