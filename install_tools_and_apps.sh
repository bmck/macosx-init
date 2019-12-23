#! /bin/env

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update

# git
brew install git

# RVM
echo "gem: --no-document" >> ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable
source ~/.rvm/scripts/rvm
rvm install 2.2.4
rvm install 2.4.1 --default
rvm install 2.5.3
rvm install 2.6.3

# Basic *nix tools
brew install apr apr-util libtool automake autoconf coreutils \
 gcc mariadb mas nmap wget subversion quantlib clover-configurator \
 ffmpeg libyaml unoconv gcc gcc49 jpeg perl p7zip \
 icu4c gdb cvs cmake boost handbrake imagemagick mysql++ \
 mackup netcat openssl python@2 python3 qt qt5 readline \
 vim imagemagick imagemagick@6 clamav gsl v8@315

# Applications
brew cask install google-chrome dropbox angry-ip-scanner bartender \
 amazon-music amazon-workspaces flux gimp noti r \
 plex-media-player plexamp clover-configurator \
 kindle expandrive visual-studio-code virtualbox virtualbox-extension-pack \
 zoomus adobe-acrobat-reader skype vlc sublime-text wireshark appcleaner \
 cakebrew dupeguru firefox itsycal workflowy onyx grandperspective whatsapp \
 disk-inventory-x cyberduck geekbench darwindumper \
 the-unarchiver

# mas install 1295203466 
# Amphetamine
mas install 937984704 
# mysms
mas install 545578261 
#
# mas install 986304488 
#
# mas install 921458519 
# Lastpass
mas install 926036361

mas upgrade

# Still need to install MS Office, OpenOffice 4.3.1?,
# Desktop-Google-Keep-OSX, pCloud, Dymo Label, Filezilla

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
gem install libv8 -v '3.16.14.13' -- --with-system-v8
gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8-315
bundle update
