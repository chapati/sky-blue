#!/usr/bin/bash
# TODO: move to firstboot ref: system_files/usr/share/ublue-os/firstboot
# TODO: check if --delete-data is necessary
set -eoux pipefail

if [ "${EUID:-$(id -u)}" -gte 1000 ]; then
  echo "SkyBlue system setup ran as unsupported user. Exiting."
  exit 1
fi

flatpak uninstall -y --system --delete-data --app org.mozilla.firefox || true
flatpak uninstall -y --system --delete-data --app org.mozilla.Thunderbird || true
flatpal uninstall -y --system --delete-data --app org.gnome.Calculator || true
flatpak uninstall -y --system --unused || true

echo "SkyBlue system setup OK"