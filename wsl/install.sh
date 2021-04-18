#!/bin/bash
sudo apt-get install build-essential curl file git -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
sudo pip3 install ansible
sudo pip3 install awscli  

ansible-galaxy collection install community.general

ansible-playbook -i inventory nonsudo_mainplaybook.yml
sudo ansible-playbook -i inventory mainplaybook.yml
