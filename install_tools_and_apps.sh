#! /bin/env

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update

# git
brew install git

# RVM
echo "gem: --no-document" >> ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
rvm install 2.2.4
rvm install 2.4.1 --default

# Basic *nix tools
brew install apr apr-util libtool automake autoconf coreutils \
 gcc mariadb mas nmap wget subversion quantlib \
 ffmpeg libyaml unoconv gcc gcc49 jpeg perl p7zip \
 icu4c gdb cvs cmake boost handbrake imagemagick mysql++ \
 mackup netcat openssl python@2 python3 qt qt5 readline \
 vim imagemagick imagemagick@6

# Applications
brew cask install google-chrome dropbox angry-ip-scanner bartender \
 amazon-music amazon-workspaces flux gimp noti \
 plex-media-player plexamp clover-configurator \
 kindle expandrive visual-studio-code virtualbox virtualbox-extension-pack \
 zoomus adobe-acrobat-reader skype vlc sublime-text wireshark appcleaner \
 cakebrew dupeguru firefox itsycal workflowy onyx grandperspective whatsapp \
 disk-inventory-x cyberduck carbon-copy-cloner geekbench darwindumper 

mas install 1295203466 937984704 545578261 467939042 986304488 921458519 926036361
mas upgrade

# Still need to install MS Office, OpenOffice 6, OpenOffice 4.3.1?, R,
# Desktop-Google-Keep-OSX, pCloud, The Unarchiver, Dymo Label, Filezilla

# Home dir
cd 
mkdir src etc doc bin

# Get Codebases
cd src
svn co svn://svn.bmck.org/lilmckh lil 
cd lil
gem install bundler --conservative
bundle update

svn co svn://104.37.164.20/uimodeldev uimodeldev
cd branches/main
gem install bundler --conservative
bundle update
cd ../academic
gem install bundler --conservative
bundle update
cd ../br 
gem install bundler --conservative
bundle update
cd ../dev 
gem install bundler --conservative
bundle update
cd ../sheepdev
gem install bundler --conservative
bundle update
cd ../training 
gem install bundler --conservative
bundle update
cd ../nz
gem install bundler --conservative
bundle update

svn co https://subversion.assembla.com/svn/capitalytics/trunk caplyt 
cd caplyt
gem install bundler --conservative
bundle update
