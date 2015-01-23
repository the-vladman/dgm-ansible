# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
    
  config.vm.define :db do |db_config|
    db_config.vm.box = "trusty64"
    db_config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
  
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
    storage_config.vm.box = "trusty64"
    storage_config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
  
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
    web_config.vm.box = "trusty64"
    web_config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
    
    web_config.vm.network :forwarded_port, guest: 80, host: 8080
    web_config.vm.network :forwarded_port, guest: 8080, host: 8081
    web_config.vm.network :private_network, ip: "192.168.33.20"
    
    config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
  
    web_config.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/webservers.yml"
      #ansible.raw_arguments = "--check"
      ansible.inventory_path = "vagrant_ansible_inventory_web"
      ansible.verbose = "v"
    end
  end
  
end