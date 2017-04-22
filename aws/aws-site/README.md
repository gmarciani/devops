# AWS SITE

*Provisioning of a website on Digital Ocean with Vagrant and Ansible*

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


## Requirements
Install the plugin *vagrant-digitalocean*:

  $> vagrant plugin install vagrant-digitalocean


## Deploy
Load credentials:

  $> source .credentials.sh

Create and provision the Droplet:

  $> vagrant up

Refresh provisioning:

  $> vagrant provision

Sync data:

  $> vagrant rsync

Destroy the Droplet:

  $> vagrant destroy -f


## Authors
Giacomo Marciani, [gmarciani@acm.org](mailto:gmarciani@acm.org)


## License
The project is released under the [MIT License](https://opensource.org/licenses/MIT).
