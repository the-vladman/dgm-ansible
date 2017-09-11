# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :web do |web_config|
    #web_config.memory = 1024
    web_config.vm.box = "ubuntu/trusty64"
    #web_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    
    web_config.vm.network :forwarded_port, guest: 80, host: 8080
    web_config.vm.network :forwarded_port, guest: 8080, host: 8081
    web_config.vm.network :forwarded_port, guest: 22, host: 2200
    web_config.vm.network :forwarded_port, guest: 8800, host: 8801
    web_config.vm.network :private_network, ip: "192.168.33.20"
  
    web_config.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/webservers.yml"
      #ansible.raw_arguments = "--check"
      ansible.inventory_path = "vagrant_ansible_inventory_web"
      #force_remote_user = false
      ansible.verbose = "v"
    end

    web_config.vm.provider "virtualbox" do |vm|
      vm.memory = 1024
    end
  end
  
end