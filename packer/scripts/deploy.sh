#!/bin/bash
set -e
cd ~
git clone https://github.com/Otus-DevOps-2017-11/reddit.git
cd ~/reddit
source /usr/local/rvm/scripts/rvm
rvm requirements
rvm use 2.4.1 --default
bundle install
puma -d
sudo mv /tmp/run.service /lib/systemd/system/run.service
sudo mv /tmp/script.sh /usr/local/bin/script.sh
sudo chmod 644 /lib/systemd/system/run.service
sudo systemctl daemon-reload
sudo systemctl enable run.service
sudo chmod u+x /usr/local/bin/script.sh