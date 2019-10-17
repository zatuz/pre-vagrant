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
# instala dependencias
sudo apt update
sudo apt install -y curl git nano zip unzip || "$INSTALL" curl git nano zip unzip || exit
#creamos carpetas o directorios que se requieren para almacen
sudo chown -R "$MY_USER":"$MY_USER" /mnt
sudo chown -R "$MY_USER":"$MY_USER" /opt
mkdir -p /mnt/local/Media
#descargamos repositorios oficiales primarios
if [ ! -d "$HOME"/genius-nginx ]; then
"$CLONE" https://github.com/zatuz/genius-nginx.git "$HOME"/genius-nginx
fi
if [ ! -d "$HOME"/Feeder-S-A-T ]; then
"$CLONE" https://github.com/zatuz/Feeder-S-A-T "$HOME"/Feeder-S-A-T
fi
#entramos a la carpeta y cambiamos la rama master por zsh
cd $HOME/Feeder-S-A-T || exit 
git fetch 
git checkout -b zsh origin/zsh
chmod +x "$HOME"/Feeder-S-A-T/*.sh
chmod +x "$HOME"/Feeder-S-A-T/script/*.sh
