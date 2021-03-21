#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install ansible
sudo pip install awscli  

ansible-galaxy collection install community.general

sudo ansible-playbook main_playbook.yaml


