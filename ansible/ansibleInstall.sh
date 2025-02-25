#! /usr/bin/bash

sudo apt install python3-pip

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
sudo pip3 install ansible