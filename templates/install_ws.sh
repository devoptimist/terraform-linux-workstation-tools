#!/bin/bash

sudo yum install -y vim git
sudo rpm -Uhv https://packages.chef.io/files/stable/chef-workstation/${chef_workstation_version}/el/7/chef-workstation-${chef_workstation_version}-1.el7.x86_64.rpm
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash -s -- -v ${hab_version}
sudo hab license accept
hab license accept
%{ if help_file_url != "" } 
if ! hash curl; then
  sudo yum install curl -y
fi
curl -o ~/workshop_help.md -s -k ${help_file_url}
%{ endif }
