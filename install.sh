#!/bin/bash

# Instalar paquetes necesarios en Arch Linux
sudo pacman --noconfirm -Sy i3-gaps i3blocks rofi feh numlockx pavucontrol blueberry ttf-font-awesome acpi

# Instalar programas
trizen --noconfirm -Sy brave-bin nautilus libreoffice-fresh-es hunspell-es_es steam alacritty gedit

# Comprobar que existe la carpeta .config, si no existe la crea
ls $HOME/.config >/dev/null 2>/dev/null || mkdir $HOME/.config
ls /etc/skel/.config >/dev/null 2>/dev/null || mkdir /etc/skel/.config

# Añadimos permisos de ejecucion a los bloques
chmod +x i3/blocks/*

# Copiar la configuracion a la carpeta home del usuario
cp -r i3 $HOME/.config

# Copiar la configuracion al skel
sudo cp -r i3 /etc/skel/.config
