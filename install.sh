#!/bin/bash

# Instalar paquetes necesarios en Arch Linux
sudo pacman --noconfirm -Sy i3-gaps i3blocks rofi feh numlockx ttf-font-awesome acpi playerctl pacman-contrib brightnessctl pulseaudio pavucontrol

# Instalar programas
trizen --noconfirm -Sy brave-bin nautilus libreoffice-fresh-es hunspell-es_es steam alacritty gedit

# Copiar la configuracion al skel
sudo mkdir /etc/skel/.config
sudo mkdir /etc/skel/.config/i3
sudo cp -r i3/* /etc/skel/.config/i3
