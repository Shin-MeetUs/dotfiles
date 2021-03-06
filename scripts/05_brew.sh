#!/bin/sh

# https://brew.sh/index_ja
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages
installed=`brew list`

for app in `cat ./etc/brew_list.txt`; do
  if [[ -z `echo "${installed}" | grep "^${app}$"` ]]; then
    echo "$(tput setaf 4)Installing ${app}...$(tput sgr0)"
    brew cask install $app
    echo "$(tput setaf 2)Install ${app}!$(tput sgr0)"
  else
    echo "$(tput setaf 3)${app} is already installed.$(tput sgr0)"
  fi
done

