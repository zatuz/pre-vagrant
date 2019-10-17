#!/bin/bash
set -o pipefail
# 1. Check if .env file exists
if [ -e .env ]; then
# shellcheck source=.env
    source .env
else
    echo "Please set up your .env file before starting your enviornment."
    exit 1
fi
if [ ! -d "$HOME"/.oh-my-zsh ]; then
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
fi
#instalamos un plugin
if [ ! -d "$ZSHPLUGIN"zsh-syntax-highlighting ]; then
"$CLONE" https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting
fi
if [ ! -d "$ZSHPLUGIN"zsh-autosuggestions ]; then
"$CLONE" git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
fi
#copiamos la configuracion de zsh
cp  "ZSH1" "$HOME"/.zshrc
