#!/usr/bin/env bash

# Install Brew Packages
brew install python
brew install tree
brew install node
brew install go
brew install hub
brew install bat
brew install automake
brew install autoconf
brew install cmake
brew install tcpdump
brew install telnet
brew install nmap
brew install ffmpeg
brew install openssl
brew install yarn
brew install youtube-dl
brew install asciinema
brew install autossh
brew install httpie
brew install thefuck
brew install tmux
brew install ranger
brew install dns2tcp
brew install wget

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install homebrew/x11/xpdf
brew install xz
brew install mas


# Install MacOS Applications
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" jetbrains-toolbox
brew cask install --appdir="/Applications" discord
brew cask install --appdir="/Applications" google-backup-and-sync
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" gimp
brew cask install --appdir="/Applications" visual-studio-code-insiders
brew cask install --appdir="/Applications" keyboard-maestro7
brew cask install --appdir="/Applications" bettertouchtool
brew cask install --appdir="/Applications" snipaste
brew cask install --appdir="/Applications" anaconda
brew cask install --appdir="/Applications" anki
brew cask install --appdir="/Applications" hyper
brew cask install --appdir="/Applications" ngrok
brew cast install --appdir="/Applications" rescuetime
brew cask install --appdir="/Applications" docker
brew caks install --appdir="/Applications" wireshark
brew cask install --appdir="/Applications" logitech-options
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" clipy
brew cask install --appdir="/Applications" jdownloader
brew cask install --appdir="/Applications" fing

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo




# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

brew cleanup

mas install 497799835 # XCode
mas install 457622435 # yoink
mas install 824183456 # affinity
mas install 824171161 # designer
mas install 552383089 # dashlane
mas 'The Unarchiver', id: 425424353