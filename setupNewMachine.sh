#!/bin/bash
if [[ -f "$CERT" ]]; then
   # Do nothing
   echo ""
else 
    read -p "Enter your email address (for SSH key): " EMAIL
    echo $EMAIL
    ssh-keygen -t ed25519 -C "$EMAIL"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    echo "Please add the following content to Github: https://github.com/settings/keys"
    cat ~/.ssh/id_ed25519.pub
    read -p "Press Enter to Continue"
fi
sudo apt install git vim gcc tmux python3 python-is-python3 python3-pip python3-z3 curl
#pushd ~

