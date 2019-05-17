#!/usr/bin/env bash
sudo apt update
sudo apt -y upgrade

#install Docker
curl -sSL "https://gist.githubusercontent.com/jaymoulin/e749a189511cd965f45919f2f99e45f3/raw/0e650b38fde684c4ac534b254099d6d5543375f1/ARM%2520(Raspberry%2520PI)%2520Docker%2520Install" | sudo sh && sudo usermod -aG docker $USER

# Essentials for development
sudo apt install -y \
    build-essential \
    curl \
    git \
    htop \
    python \
    python-pip \
    ranger \
    tree \
    unrar \
    hub \
    tmux \
    openssh-server \
    thefuck\
    ethtool\
# add yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -y update
sudo apt install -y yarn nodejs npm


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
    wget http://installer.jdownloader.org/JD2Setup_x64.sh
    chmod +x JD2Setup_x64.sh
    ./JD2Setup_x64.sh 

    # remote Desktop
    sudo apt install -y xrdp
    sudo systemctl enable xrdp  
fi

# Cleanup
sudo apt autoremove
sudo apt autoclean