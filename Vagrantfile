# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Ubuntu 14.04 LTS 64-bit
  config.vm.box = "trusty64"
  config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8888" will access port 8888 on the guest machine's
  # localhost.
  config.vm.network :forwarded_port, guest: 8888, host: 8888

  # Mount notebook directories to home directory
  config.vm.synced_folder "sample_notebooks/", "/home/vagrant/sample_notebooks"

  # Provision the server with a shell script.
  config.vm.provision :shell, :path => "vagrant_bootstrap.sh"
end
