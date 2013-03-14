# OpenStack Vagrant Chef test deployment

With this repo you can deploy a local OpenStack cloud for testing purposes using Opscode Chef and vagrant.

## Requirements

You need the following software to get this running:

 - [vagrant][vg]
 - [git][git]
 - [A Hosted Chef Account][hostedchef] (You can use your own chef server, of course. Installing a chef server e.g. via [knife-server][ks] is out of scope of this tutorial, though)
 - [librarian-chef][lib] - `gem install librarian`
 - [spiceweasel][sw] - `gem install spiceweasel -v 1.2.0`

## Installation steps

1. Checkout this repo `git clone https://www.github.com/cloudbau/openstack-chef-repo.get`
2. `librarian-chef update`
3. Edit `config.rb` and add your Chef info
4. `spiceweasel infrastructure.yml | sh`
5. `vagrant up`



[vg]: http://www.vagrantup.com
[git]: http://git-scm.com/
[hostedchef]: http://www.opscode.com/hosted-chef/
[ks]: http://fnichol.github.com/knife-server/
[opsoschef]: http://www.opscode.com/solutions/chef-openstack/
[lib]: https://github.com/applicationsonline/librarian
[sw]: http://wiki.opscode.com/display/chef/Spiceweasel
