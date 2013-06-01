Vagrant::Config.run do |config|
	config.vm.box = "precise32"
	config.vm.box_url = "http://files.vagrantup.com/precise32.box"
	config.vm.host_name = "octopress"
	
	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = "_vagrant_setup/cookbooks"
		chef.add_recipe("vagrant_main")
	end
	config.vm.provision :shell, :path => "_vagrant_setup/bootstrap.sh"
	config.vm.share_folder("vagrant-root", "/vagrant", ".", :extra => 'dmode=777,fmode=777')
end
