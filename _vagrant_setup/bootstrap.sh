#!/usr/bin/env bash

rm -r /var/www
ln -s /vagrant /var/www

apt-get update && apt-get install -y git curl
curl -L https://get.rvm.io | bash -s stable --ruby=1.9.3
source /usr/local/rvm/scripts/rvm
rvm rubygems latest
gem install bundler bundle

cd /vagrant
bundle install
