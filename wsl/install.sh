#!/bin/bash
sudo apt update
sudo apt install build-essential procps curl file git python3 python3-pip zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo pip3 install ansible
sudo pip3 install awscli

ansible-galaxy collection install community.general

sudo ansible-playbook -i inventory playbooks/apt.yml
ansible-playbook -i inventory mainplaybook.yml
