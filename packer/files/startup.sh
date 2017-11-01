#! /bin/bash
set -e

# startup App
cd /home/appuser/reddit
source /home/appuser/.rvm/scripts/rvm
bundle install
puma -d
