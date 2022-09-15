#!/bin/bash
ALGORITHM=ed25519
CERT=~/.ssh/id_$ALGORITHM
if [[ ! -f "$CERT" ]]; then
    read -p "Enter your email address (for SSH key): " EMAIL
    ssh-keygen -t $ALGORITHM -C "$EMAIL"
    eval "$(ssh-agent -s)"
    ssh-add $CERT
    echo "Please add the following content to Github: https://github.com/settings/keys"
    cat $CERT.pub
    chmod 600 $CERT
    chmod 700 ~/.ssh
    read -p "Press Enter to Continue"
else
    echo "SSH Certificate already exists"
fi

Z3_INSTALLED=$(dpkg-query -W --showformat='${Status}\n' python3-z3|grep "install ok installed")
if [[ "" = "$Z3_INSTALLED" ]]; then
    sudo apt update
    sudo apt install git vim gcc tmux python3 python-is-python3 python3-pip python3-z3 curl
    sudo apt upgrade
else
    echo "Packages already installed"
fi

if [[ ! -f "~/.tmux.conf" ]]; then
    shopt -s dotglob
    cp .gitconfig ~
    cp .bash_aliases ~
    cp .tmux.conf ~
    cp .vimrc ~
    touch ~/.bash_aliases_private
else
    echo "Configuration scripts already installed"
fi


