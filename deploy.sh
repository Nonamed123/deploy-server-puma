#!/bin/bash
git clone https://github.com/Artemmkin/reddit.git
source /home/Buldozer/.rvm/scripts/rvm
rvm requirements
rvm use 2.4.1 --default
cd reddit && bundle install
puma -d

