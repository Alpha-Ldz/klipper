#!/bin/sh
FOLDERS="gcode_files klipper klipper_z_calibration klippy-env moonraker moonraker-env .profile .cache .moonraker .moonraker_database .config"
for FOLDER in $FOLDERS; do
  if [ ! -d "/mnt/config/$FOLDER" ]; then
    cp -r "/home/klippy/$FOLDER" "/mnt/config/"
    chmod 777 "/mnt/config/$FOLDER"
  fi
done
