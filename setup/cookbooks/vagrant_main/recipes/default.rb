# Some neat package
%w{ debconf git-core htop screen curl vim }.each do |a_package|
  package a_package
end

include_recipe "apt"

s = "octopress"
site = {
  :name => s,
  :host => "dev.#{s}",
  :aliases => [ "dev.#{s}.com" ]
}

execute "add-root-bash-files" do
    command "cat /vagrant/setup/bash/bash.bashrc >> /etc/bash.bashrc"
	only_if { `cat /etc/bash.bashrc | grep "Setting Custom PS1"` == "" }
	action :run
	ignore_failure true
end

execute "add-vagrant-user-bash-files" do
    command "cat /vagrant/setup/bash/bash.bashrc >> /home/vagrant/.bashrc"
	only_if { `cat /home/vagrant.bashrc | grep "Setting Custom PS1"` == "" }
	action :run
	ignore_failure true
end
