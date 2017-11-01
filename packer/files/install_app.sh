#! /bin/bash
set -e

# Install App
cd /home/appuser
git clone https://github.com/Artemmkin/reddit.git /home/appuser/reddit
cd /home/appuser/reddit
source /home/appuser/.rvm/scripts/rvm
bundle install

#puma -d