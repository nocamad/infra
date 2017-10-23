#! /bin/bash

#./install_ruby.sh
#./install_mongodb.sh
#./deploy.sh

sudo mkdir /opt/app
cd /opt/app

# Ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler -V --no-ri --no-rdoc

# Ruby correct? TODO

# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

# MongoDB correct? TODO

# App
git clone https://github.com/Artemmkin/reddit.git
cd reddit && bundle install
puma -d
#ps aux | grep puma

# App correct? TODO
# В логах ругается на bundle для root, приложение работает, но лучше будет переделать потом не под root
