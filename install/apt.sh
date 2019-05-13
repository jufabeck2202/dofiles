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
fi

# Cleanup
sudo apt autoremove
sudo apt autoclean