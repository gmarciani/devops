# DIGITAL OCEAN PROVISIONING

*Provisioning of Digital Ocean droplet with Vagrant and Ansible*

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


## Setup
Install the plugin:

  $> vagrant plugin install vagrant-digitalocean


## Usage
Load the credentials into the environment:

  $> source do-credentials.sh

Create and provision the Droplet:

  $> vagrant up --provider=digital_ocean


## Authors
Giacomo Marciani, [gmarciani@acm.org](mailto:gmarciani@acm.org)


## License
The project is released under the [MIT License](https://opensource.org/licenses/MIT).
