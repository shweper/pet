#!/usr/bin/bash

sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates tzdata perl

sudo apt-get install -y postfix


curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install gitlab-ce

# 192.168.3.192
echo 'Use your ip address: '
hostname  -I | cut -f1 -d' '
echo 'configuration url in /etc/gitlab/gitlab.rb file.'
# sudo gitlab-ctl reconfigure

sudo cat /etc/gitlab/initial_root_password