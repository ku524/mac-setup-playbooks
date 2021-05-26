#!/bin/bash
sudo apt-get install build-essential procps curl file git -y
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
sudo pip3 install ansible
sudo pip3 install awscli  

ansible-galaxy collection install community.general

ansible-playbook -i inventory nonsudo_mainplaybook.yml
sudo ansible-playbook -i inventory mainplaybook.yml
