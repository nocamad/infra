#!/bin/bash
set -e

# Install MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org
systemctl enable mongod

#echo '#!/bin/bash' > startpuma.sh
#echo 'cd /home/appuser/reddit' >> startpuma.sh
#echo 'puma -d' >> startpuma.sh

#chmod 777 startpuma.sh
#cp /home/appuser/startpuma.sh /etc/init.d/
#update-rc.d startpuma.sh defaults

#update-rc.d /home/appuser/reddit/startpuma.sh 70 2 3 4 5 . stop 20 0 1 6 .
