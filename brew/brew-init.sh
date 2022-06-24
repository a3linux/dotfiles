#!/usr/bin/env bash
# Install Softwares managed by brew
#

if [ -x /usr/local/bin/brew  ]; then
    echo "Homebrew installed already!"
else
    # Install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install python3 virtualenv macvim node@16 npm yarn awscli vault fzf rg ag jq gopls

brew install --cask postman visual-studio-code gimp docker microsoft-remote-desktop nextcloud evernote firefox microsoft-edge google-chrome

# install language servers
npm install -g typescript-language-server dockerfile-language-server-nodejs bash-language-server vscode-css-languageserver-bin prettier eslint
pip3 install pyls autopep8 yapf
