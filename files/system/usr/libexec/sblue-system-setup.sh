#!/usr/bin/bash
set -eoux pipefail

if [ "${EUID:-$(id -u)}" -gte 1000 ]; then
  echo "SkyBlue system setup ran as unsupported user. Exiting."
  exit 1
fi

flatpak uninstall -y --system --delete-data --app org.mozilla.firefox || true
flatpak uninstall -y --system --delete-data --app org.mozilla.Thunderbird || true
flatpak uninstall -y --system --unused || true

echo "SkyBlue system setup OK"