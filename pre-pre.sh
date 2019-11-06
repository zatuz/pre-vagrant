#!/bin/bash
set -o pipefail
echo 'LANG="es_MX.UTF-8"' > /etc/default/locale
echo 'LANGUAGE="es_MX.UTF-8"' >> /etc/default/locale
echo 'LC_ALL="es_MX.UTF-8"' >> /etc/default/locale
echo "es_MX.UTF-8 UTF-8" > /etc/locale.gen
apt update
locale-gen
apt upgrade -y
apt dist-upgrade -y
reboot
