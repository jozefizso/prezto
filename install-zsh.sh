#!/bin/bash

if ! grep -q "# Homebrew Shells" /etc/shells ; then
  echo "Adding Homebrew Shells to /etc/shells"

  sudo sh -c "echo >> /etc/shells"
  sudo sh -c "echo '# Homebrew Shells' >> /etc/shells"
  sudo sh -c "echo '/usr/local/bin/bash' >> /etc/shells"
  sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
fi

brew install zsh

chsh -s /usr/local/bin/zsh


# FIX: path_helper will run only for interactive shells
# https://github.com/sorin-ionescu/prezto/issues/381
echo "Fix OSX zsh environment bug"
sudo mv /etc/{zshenv,zprofile}
