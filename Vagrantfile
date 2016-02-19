# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network :public_network

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.vm.synced_folder "~/Work", "/vagrant", type: "nfs"
  config.vm.synced_folder "~/Work/designate", "/vagrant/designate"

  # View the documentation for the provider you are using for more
  # information on available options.

  # config.vm.provision "shell", inline: <<-SHELL
  #   debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password rootpass'
  #   debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password rootpass'

  #   sudo rabbitmqctl add_user designate designate
  #   sudo rabbitmqctl set_permissions -p "/" designate ".*" ".*" ".*"
  #   git clone https://github.com/djcb/mu.git
  #   cd mu && autoreconf -i && ./configure && make && sudo make install

  # SHELL
  # config.ssh.private_key_path = '~/.ssh/id_rsa'

  config.vm.provider :rackspace do |rs|
    rs.server_name      = 'dev-vm-elarson'
    rs.username         = ENV['RAX_USERNAME']
    rs.api_key          = ENV['RAX_API_KEY']
    rs.rackspace_region = ENV['RAX_REGION']
    rs.flavor           = ENV['RAX_FLAVOR']
    rs.image            = ENV['RAX_IMAGE']
    rs.key_name         = 'elarson'
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "designate-playbook.yml"
  end
end
