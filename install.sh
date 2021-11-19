#!/bin/bash

# Instalar paquetes necesarios en Arch Linux
sudo pacman --noconfirm -Sy i3-gaps i3blocks rofi feh numlockx pavucontrol blueberry ttf-font-awesome acpi

# Instalar programas
trizen --noconfirm -Sy brave-bin nautilus libreoffice-fresh-es hunspell-es_es steam alacritty gedit

# Comprobar que existe la carpeta /etc/skel/.config/i3, si no existe la crea
ls /etc/skel/.config >/dev/null 2>/dev/null || sudo mkdir /etc/skel/.config
ls /etc/skel/.config/i3 >/dev/null 2>/dev/null || sudo mkdir /etc/skel/.config/i3

# Copiar la configuracion al skel
sudo cp -r i3/* /etc/skel/.config/i3
