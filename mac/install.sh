#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
sudo pip3 install ansible
sudo pip3 install awscli  

ansible-galaxy collection install community.general

ansible-playbook -i inventory nonsudo_mainplaybook.yml
sudo ansible-playbook -i inventory mainplaybook.yml
