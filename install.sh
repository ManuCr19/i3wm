#!/bin/bash

# Instalar paquetes necesarios en Arch Linux
sudo pacman -S i3-gaps i3blocks rofi feh numlockx pavucontrol blueberry

# Copiar la configuracion a la carpeta home del usuario
cp -r i3 $HOME/.config
