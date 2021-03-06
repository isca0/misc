#!/bin/sh
#By: isca -> igorsca(at)gmail.com
#Curitiba 13/02/14
#
#This make a lot configuration for my profile in OsX
#
##### global vars ####
SUDO=`which sudo`
#
#Stop .DS_Store
echo "Stoping the anoing .DS_Store files"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
#
#Enabling iMovie Library across network
#https://gist.github.com/isca0/ae542c7155813eb0d5f7971eb83f9ad1
echo "Enabling iMovie across network"
defaults write com.apple.iMovieApp allowNV -bool TRUE
#Improving command with my pref's aliases
echo "Irei pedir sua senha..."
$SUDO sh -c 'echo "
#Aliass Fields
alias vi=\"vim\"
alias ls=\"ls -G\"
alias cp=\"cp -v\"
alias rm=\"rm -i\"
alias mv=\"mv -v\"
alias ll=\"ls -lhG\"
alias la=\"ls -aG\"
alias l=\"ls -lahFG\"
" >> /etc/bashrc'
#
#Fixing GPG vars
echo "
GPG_TTY=$(tty)
export GPG_TTY
" >> ~/.profile

#Enable colors on vim and set vim as default
echo "Adicionando cores e syntaxes ao vim"
$SUDO sh -c 'echo "
\"Colors and syntax to vim
syntax on
" >> /usr/share/vim/vimrc'

