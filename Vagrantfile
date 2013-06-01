Vagrant::Config.run do |config|
	config.vm.box = "precise32"
	config.vm.box_url = "http://files.vagrantup.com/precise32.box"
	config.vm.host_name = "aequasi"
	config.vm.network :bridged
	config.vm.forward_port 4000, 4000
	
	config.vm.customize [
                      "modifyvm", :id,
                      "--memory", 1024,
                      ]

	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = "setup/cookbooks"
		chef.add_recipe("vagrant_main")
	end
	config.vm.provision :shell, :path => "setup/bootstrap.sh"
	config.vm.share_folder("vagrant-root", "/vagrant", ".", :extra => 'dmode=777,fmode=777')
end
