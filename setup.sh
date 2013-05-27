#!/bin/bash

# Symlink arg 1 from arg 2.
symlink () {
    [ -e $2 ] && rm $2; ln -s $1 $2
}

# Symlink directory $1 from directory $2
symlink_dir () {
    [ -d $2 ] && rm -rf $2; ln -s $1 $2
}

# Pull vundle submodule
echo "Pulling configuration submodules..."
git submodule update --init --recursive

echo "Setting up symlinks..."
symlink ~/dotfiles/bash_profile ~/.bash_profile
symlink ~/dotfiles/bashrc ~/.bashrc

# vim
symlink_dir ~/dotfiles/vim ~/.vim
symlink ~/dotfiles/vimrc ~/.vimrc

# git
symlink ~/dotfiles/gitignore ~/.gitignore
symlink ~/dotfiles/gitconfig ~/.gitconfig

echo "Done!"
