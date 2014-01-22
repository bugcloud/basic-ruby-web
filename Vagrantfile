# encoding: utf-8
# vim: ft=ruby expandtab shiftwidth=2 tabstop=2

VAGRANTFILE_API_VERSION = "2"
HOSTNAME = "dev.xxx"
IP = "192.168.33.10"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "Ubuntu-12.04"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.hostname = HOSTNAME
  config.vm.network :private_network, ip: IP

	config.vm.provider :virtualbox do |vb|
    vb.name = "local_vagrant"
  end

  config.vm.synced_folder "www/", "/home/www", :create => "true"

  config.hostsupdater.remove_on_suspend = true

  config.berkshelf.enabled = true
end
