#!/usr/bin/bash

if [ "${EUID:-$(id -u)}" -lt 1000 ]; then
  echo "SkyBlue user setup ran as unsupported user. Exiting."
  exit 1
fi

flatpak uninstall --system --delete-data --app org.mozilla.firefox
flatpak uninstall --system --unused
