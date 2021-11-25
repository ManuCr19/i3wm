#!/bin/bash

# Instalar gestor de inicio de sesion
sudo pacman --noconfirm -Sy lightdm lightdm-slick-greeter materia-gtk-theme
sudo systemctl enable lightdm.service
sudo mkdir /etc/lightdm/lightdm.conf.d
sudo cp lightdm/19-i3wm-ManuCr19.conf /etc/lightdm/lightdm.conf.d

# Instalar paquetes necesarios en Arch Linux
sudo pacman --noconfirm -Sy i3-gaps i3blocks rofi feh numlockx ttf-font-awesome acpi playerctl pacman-contrib brightnessctl pulseaudio pavucontrol dunst

# Instalar programas
trizen --noconfirm -Sy brave-bin nautilus libreoffice-fresh-es hunspell-es_es steam alacritty gedit

# Copiar la configuracion al skel
sudo mkdir /etc/skel/.config
sudo mkdir /etc/skel/.config/i3
sudo cp -r i3/* /etc/skel/.config/i3
