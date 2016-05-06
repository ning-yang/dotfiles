#!/bin/bash

# install necessary packages
apt-get update
apt-get install -y vim git zsh tmux 
apt-get install -y build-essential cmake
apt-get install -y python2.7 ipython python-pip python-dev 

# for mac: brew install the_silver_searcher
apt-get install silversearcher-ag

# install python tools
pip install pudb

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download dotfiles repo
git clone https://github.com/ning-yang/dotfiles.git ~/dotfiles

# create link files
rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

rm ~/.vim -r -f
ln -s ~/dotfiles/vim ~/.vim

rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
