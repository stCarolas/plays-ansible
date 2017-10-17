# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "fedora/25-cloud-base"

  config.vm.provision "shell", inline: <<-SHELL
    dnf install -y ansible
    dnf install -y python2-dnf 
  SHELL
end
