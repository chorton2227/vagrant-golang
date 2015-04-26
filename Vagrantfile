# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :puppet do |puppet|
    puppet.module_path    = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "init.pp"
  end
end

Vagrant.configure("2") do |config|
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end
