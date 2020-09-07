# Config New Linux

## Basic Stuff

```bash

sudo apt-get update
sudo apt-get upgrade

```

## ZSH && Oh-my-ZSH

```bash

sudo apt-get -y zsh
chsh -s $(which zsh)
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
cd ~
git clone https://github.com/caikaidi/wsl.git
rm .zshrc
cp wsl/.zshrc .zshrc
source ~/.zshrc

```

## python

Download conda from `https://www.anaconda.com/products/individual`
Install by `bash *****.sh`

```bash
conda update
conda init

```

## Vim

```bash
sudo apt-get install neovim
cd ~
mkdir .vim
cp ~/wsl/vimrc ~/.vim/vimrc
mkdir .config/nvim
cp ~/wsl/init.vim ~/.config/nvim/inti.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim
```

## git

```bash
ssh-keygen -t rsa -b 4096 -C "diegodaddy@icloud.com"
cat ~/.ssh/id_rsa.pub

