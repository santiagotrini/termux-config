#! /bin/bash

# choose mirrors
termux-change-repo

# update packages
pkg update && pkg upgrade

# install packages
pkg install which tree clang python nodejs vim nano mariadb cowsay  cmatrix bison flex wget make man linux-man-pages -y

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy .vimrc
cp .vimrc ~

# get spim src 404 not found
# wget https://sourceforge.net/code-snapshots/svn/s/sp/spimsimulator/code/spimsimulator-code-r764.zip

# unzip it, compile and install
unzip spimsimulator-code-r764.zip 
cd spimsimulator-code-r764/spim
cp ../../Makefile .
make && make install
cd
vim





