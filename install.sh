#!/bin/bash

# Instalar paquetes necesarios en Arch Linux
sudo pacman -S i3-gaps i3blocks rofi feh numlockx pavucontrol blueberry

# Comprobar que existe la carpeta .config, si no existe la crea
ls $HOME/.config >/dev/null 2>/dev/null || mkdir $HOME/.config

# Copiar la configuracion a la carpeta home del usuario
cp -r i3 $HOME/.config
