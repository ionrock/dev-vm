#!/bin/bash


sudo apt-get install -yq software-properties-common
sudo apt-add-repository -y ppa:ubuntu-elisp/ppa
sudo apt-add-repository -y ppa:git-core/ppa

sudo apt-get update

sudo apt-get install -yq \
  git \
  vim \
  emacs-snapshot \
  byobu

# Get the emacs config ready
if [! -d ~/.emacs.d]; then
  git clone https://bitbucket.org/elarson/emacs.d .emacs.d
  push .emacs.d
  git submodule init
  git submodule update
  pop
fi
