#!/bin/bash
set -o pipefail
## creamos carpeta complementos
mkdir "$HOME/complementos"
cd "$HOME/complementos" || exit
wget "https://git.io/Je4gs" -O .env
wget "https://raw.githubusercontent.com/zatuz/pre-vagrant/master/pre.sh" -O pre.sh # https://git.io/Je4go
wget "https://raw.githubusercontent.com/zatuz/pre-vagrant/master/post.sh?token=AJLWHOJQAW5VSY7XBQPF3WS5VAPGK" -O post.sh
wget "https://raw.githubusercontent.com/zatuz/pre-vagrant/master/.zshrc-1?token=AJLWHOLO2GV7WEP4CIY4NZC5VAPEU" -O .zshrc-1 
wget "https://raw.githubusercontent.com/zatuz/pre-vagrant/master/pre-pre.sh?token=AJLWHOPIS33NO2QPO7BR3NK5VAPAM" -O pre-pre.sh

# damos permisos de ejecutable sh
chmod +x *.sh
#iniciamos pre.sh 
source "pre.sh"
source "pre-pre.sh"
