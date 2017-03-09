#!/bin/bash

# add brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# add brew cask

brew install zsh zsh-completions
brew install cmake
brew install tmux

# install python tools
pip install pudb

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download dotfiles repo
git clone https://github.com/ning-yang/dotfiles.git ~/dotfiles

# create link files
rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

rm -rf ~/.vim 
ln -s ~/dotfiles/vim ~/.vim

rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# config basic git
git config --global user.name "Ning Yang"
git config --global user.email csyangning@gmail.com
git config --global core.editor vim
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

# fix ownership
chmod u=rwx,g=rwx,o=rwx ~/dotfiles/ --recursive
