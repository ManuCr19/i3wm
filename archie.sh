#!/bin/bash

# Instalar gestor de inicio de sesion
sudo pacman --noconfirm -Sy lightdm lightdm-slick-greeter
sudo systemctl enable lightdm.service
sudo cp lightdm/slick-greeter.conf /etc/lightdm
sudo sed -i '/#greeter-session/c greeter-session=lightdm-slick-greeter' /etc/lightdm/lightdm.conf
sudo sed -i '/^greeter-session/c greeter-session=lightdm-slick-greeter' /etc/lightdm/lightdm.conf
sudo sed -i '/#greeter-show-manual-login/c greeter-show-manual-login=true' /etc/lightdm/lightdm.conf
sudo sed -i '/^greeter-show-manual-login/c greeter-show-manual-login=true' /etc/lightdm/lightdm.conf
sudo mkdir /usr/share/backgrounds
sudo cp lightdm/playa-de-las-catedrales.jpg /usr/share/backgrounds

# Instalar paquetes necesarios
sudo pacman --noconfirm -Sy i3-gaps i3blocks feh numlockx acpi playerctl pacman-contrib brightnessctl pulseaudio pavucontrol dunst network-manager-applet gnome-screenshot

# Instalar tema gtk, paquete de iconos y fuente
sudo pacman --noconfirm -Sy gnome-themes-extra papirus-icon-theme ttf-font-awesome

# Instalar rofi y sus temas
sudo pacman --noconfirm -Sy rofi
git clone https://github.com/davatorium/rofi-themes
sudo cp rofi-themes/User\ Themes/* /usr/share/rofi/themes
sudo rm -r rofi-themes

# Instalar y activar bluetooth
sudo pacman --noconfirm -Sy blueman pulseaudio-bluetooth
sudo systemctl enable bluetooth.service

# Instalar programas
trizen --noconfirm -Sy brave-bin nautilus libreoffice-fresh-es hunspell-es_es alacritty

# Instalar game app
trizen --noconfirm -Sy wine lutris mangohud steam

# Copiar la configuracion al skel
sudo mkdir -p /etc/skel/.config
sudo cp -r i3 /etc/skel/.config
sudo cp -r rofi /etc/skel/.config
sudo cp -r i3blocks /etc/skel/.config
sudo cp -r scripts /etc/skel/.config
sudo cp -r gtk-3.0 /etc/skel/.config
sudo cp .gtkrc-2.0 /etc/skel
