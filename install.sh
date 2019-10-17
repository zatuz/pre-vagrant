#!/bin/bash
set -o pipefail
## creamos carpeta complementos
mkdir "$HOME/complementos"
cd "$HOME/complementos" || exit
wget "https://git.io/Je4gs" -O .env
wget "https://git.io/Je4gc" -O pre.sh # https://git.io/Je4go
wget "https://git.io/Je4gw" -O post.sh
wget "https://git.io/Je4gK" -O .zshrc-1 
wget "https://git.io/Je4gF" -O pre-pre.sh

# damos permisos de ejecutable sh
chmod +x *.sh
#iniciamos pre.sh 
source "pre.sh"
sudo ./pre-pre.sh
