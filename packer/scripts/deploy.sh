#!/bin/bash
set -e
cd ~
git clone https://github.com/Otus-DevOps-2017-11/reddit.git
cd ~/reddit
bundle install
mv /tmp/run.service /lib/systemd/system/run.service