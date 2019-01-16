#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Install Ansible
brew install ansible

elif  grep -q "Ubuntu" /etc/issue; then
# Install Ansible
sudo apt-get update
sudo apt-get install ansible

else
echo 
"Not Mac or Ubuntu"
fi

# Run the playbook
ansible-playbook -i "localhost," -c local install-apps.yml -K
