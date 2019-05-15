#!/usr/bin/env bash
sudo apt update
sudo apt upgrade

#install Docker
curl -fsSL https://get.docker.com -o get-docker.sh | sh -
apt-get install -y docker-compose
rm get-docker.sh

# Essentials for development
sudo apt install -y \
    build-essential \
    curl \
    git \
    htop \
    nodejs \
    npm \
    python \
    python-pip \
    ranger \
    tree \
    unrar \
    hub \
    tmux \
    openssh-server \

# Pass any argument to this script for a "full" install
# Installes useful command applications
if [ "$1" = "full" ]; then
    # Developer packages
    sudo apt install -y \
        nmap \
        automake \
        autoconf \
        cmake \
        tcpdump \
        telnet \
        nmap \
        openssl \
        httpie \
        ag \
        wget\


    # OpenVPN
    sudo apt install -y \
        openvpn \
        network-manager-openvpn \
        network-manager-openvpn-gnome

    # install Jdownloader
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6A68F637 
    sudo apt-get install -y jdownloader-installer 

    # remote Desktop
    sudo add-apt-repository ppa:x2go/stable
    sudo apt-get update
    sudo apt-get install -y x2goserver x2goserver-xsession
fi

# Cleanup
sudo apt autoremove
sudo apt autoclean