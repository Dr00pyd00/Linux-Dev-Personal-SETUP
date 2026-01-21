#!/usr/bin/env bash

set -e      # stop script if error

# Update System:
sudo apt update -y

# Base dev tools:
sudo apt install -y \
  build-essential \
  curl wget \
  git \
  tree \
  htop \
  unzip zip \
  ca-certificates \
  software-properties-common \
  tmux \
  vim-gtk3 \
  xclip


# Debug & Network tools
sudo apt install -y \
  strace \
  ltrace \
  gdb \
  lsof \
  net-tools \
  iproute2 \
  netcat \
  tcpdump



# Copy personal vimrc
cp vim/vimrc ~/.vimrc

# Copy personal tmux.conf
cp tmux/tmux.conf ~/.tmux.conf

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim plugins
vim +PlugInstall +qall


echo "YAY Setup Completed !!!"

