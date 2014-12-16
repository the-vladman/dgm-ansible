# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
    
  config.vm.define :db do |db_config|
    db_config.vm.box = "precise64"
    db_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
    db_config.vm.network :forwarded_port, guest: 8983, host: 8984
    db_config.vm.network :forwarded_port, guest: 5432, host: 5434
    db_config.vm.network :forwarded_port, guest: 5000, host: 5051
    db_config.vm.network :private_network, ip: "192.168.33.10"
  
    db_config.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/dbservers.yml"
      #ansible.raw_arguments = "--check"
      ansible.inventory_path = "vagrant_ansible_inventory_db"
      ansible.verbose = "v"
    end
  end
  
  
  config.vm.define :storage do |storage_config|
    storage_config.vm.box = "precise64"
    storage_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
    storage_config.vm.network :forwarded_port, guest: 111, host: 1110
    storage_config.vm.network :forwarded_port, guest: 2049, host: 2050
    storage_config.vm.network :private_network, ip: "192.168.33.30"
  
    storage_config.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/storageservers.yml"
      #ansible.raw_arguments = "--check"
      ansible.inventory_path = "vagrant_ansible_inventory_storage"
      ansible.verbose = "v"
    end
  end
  
  
  config.vm.define :web do |web_config|
    web_config.vm.box = "precise64"
    web_config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    
    web_config.vm.network :forwarded_port, guest: 80, host: 8080
    web_config.vm.network :forwarded_port, guest: 8080, host: 8081
    web_config.vm.network :private_network, ip: "192.168.33.20"
  
    web_config.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/webservers.yml"
      #ansible.raw_arguments = "--check"
      ansible.inventory_path = "vagrant_ansible_inventory_web"
      ansible.verbose = "v"
    end
    web_config.vm.synced_folder "local/ckanext-dgm", "/usr/lib/ckan/default/src/ckanext-dgm"
  end
  
end