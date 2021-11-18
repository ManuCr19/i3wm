#!/bin/bash

# Autor: https://github.com/ManuCr19

acpi | grep Discharging >/dev/null 2>&1 && STATE=disconnect
acpi | grep Charging >/dev/null 2>&1 && STATE=connect

BAT=$(acpi | awk -F, '{ print $2 }')

case $STATE in
  disconnect) echo "$BAT" ;;
  connect) echo "$BAT" ;;
esac
