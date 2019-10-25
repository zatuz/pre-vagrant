#!/bin/bash
set -o pipefail
## creamos carpeta complementos

mkdir "$HOME/complementos"
cd "$HOME/complementos" || exit
wget "https://git.io/Je4gs" -O .env
wget "https://gist.githubusercontent.com/zatuz/034403968c7d76a5011096f09681004d/raw/55ca614b568f6dc5cf0855a3151a7cfb3e67c16c/pre.sh" -O pre.sh # https://git.io/Je4go
wget "https://gist.githubusercontent.com/zatuz/6f2fdb35050ae7654662f41f24d5454a/raw/5bfb4573ddd0255ef34e645b5f151218ef387e7c/post.sh" -O post.sh
wget "https://raw.githubusercontent.com/zatuz/pre-vagrant/master/.zshrc-1?token=AJLWHOLJ5EPW7FFUWOE26VS5WN7RS" -O .zshrc-1 
wget "https://gist.githubusercontent.com/zatuz/625a08b11922b85841801a97333c582f/raw/a8692e83e16287f9f38b4252cf1770994f1fb085/install-pre.sh" -O pre-pre.sh

# damos permisos de ejecutable sh
chmod +x *.sh
#iniciamos pre.sh 
source "pre.sh"
sudo "$PRE/pre-pre.sh"
