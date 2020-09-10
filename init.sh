#! /bin/bash

#
# After this script, manually:
# Run vim and do :PlugInstall .
# Download conda and install.
# Paste ~/.ssh/id_rsa.pub to github ssh config



#update
sudo apt-get update
sudo apt-get upgrade

#zsh
sudo apt-get -y zsh
chsh -s $(which zsh)
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
cd ~
git clone https://github.com/caikaidi/wsl.git
rm .zshrc
cp wsl/.zshrc .zshrc
source ~/.zshrc

#python
##use conda

#vim
sudo apt-get install neovim
sudo apt-get install nodejs
sudo apt-get install yum
cd ~
mkdir .vim
cp ~/wsl/vimrc ~/.vim/vimrc
mkdir .config/nvim
cp ~/wsl/init.vim ~/.config/nvim/inti.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#git
ssh-keygen -t rsa -b 4096 -C "diegodaddy@icloud.com"
cat ~/.ssh/id_rsa.pub
git config --global user.name "diego"
git config --global user.email "diegodaddy@icloud.com"
git config --global core.editor vim

#GUI
#sudo apt-get install xfce4
