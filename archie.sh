#!/bin/bash

# Instalar gestor de inicio de sesion
sudo pacman --noconfirm -Sy lightdm lightdm-slick-greeter
sudo systemctl enable lightdm.service
sudo cp lightdm/slick-greeter.conf /etc/lightdm
sed -i '/#greeter-session/c greeter-session=lightdm-slick-greeter' /etc/lightdm/lightdm.conf
sed -i '/greeter-session/c greeter-session=lightdm-slick-greeter' /etc/lightdm/lightdm.conf

# Instalar paquetes necesarios
sudo pacman --noconfirm -Sy i3-gaps i3blocks rofi feh numlockx ttf-font-awesome acpi playerctl pacman-contrib brightnessctl pulseaudio pavucontrol dunst

# Instalar programas
trizen --noconfirm -Sy brave-bin nautilus libreoffice-fresh-es hunspell-es_es steam alacritty

# Copiar la configuracion al skel
sudo mkdir /etc/skel/.config
sudo cp -r i3 /etc/skel/.config
sudo cp -r rofi /etc/skel/.config
sudo cp -r i3blocks /etc/skel/.config
sudo cp -r scripts /etc/skel/.config
