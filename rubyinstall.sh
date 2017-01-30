#!/bin/bash
#script

echo "Script has started!"
sudo su
apt-get update
apt-get install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
apt-get install ruby-full
/bin/bash --login
rvm --default use ruby-2.3.3
apt-get install nodejs
rvm gemset use global
echo "gem: --no-document" >> ~/.gemrc
gem update
gem install bundler
gem install nokogiri
rvm use ruby-2.3.3@rails5.0 --create
gem install rails
ruby -v
rails --version & exit


