# Important
This module connects via ssh and installs some chef related tools.

## Usage

```hcl
module "workstation_names" {
  source                     = "devoptimist/workstation-tools/linux"
  version                    = "0.0.9"
  workstation_ips            = ["192.168.0.1", "192.168.0.2", "192.168.0.3"]
  winrm_password             = "MyP@ssW0rd!"
  winrm_user                 = "myuser"
}
```
The above example would install some development tools on to the 3 vms
that are accessible via the workstation_ips list.
the following is installed
* git
* vim
* chef habitat
* chef-workstation

## Inputs

| Name | Description | Type | Default | Required |
|chef_workstation_dl_url| The url to the chef workstation rpm | string | https://packages.chef.io/files/stable/chef-workstation/0.2.53/el/6/chef-workstation-0.2.53-1.el6.x86_64.rpm| no |
|workstation_ips| List of ip addresses to connect to |list|[]| yes |
|ssh_password| The password for the winrm user we are using to connect | string | "" | yes |
|ssh_user| The user name for the winrm user we are using to connect | string | "" | yes |

