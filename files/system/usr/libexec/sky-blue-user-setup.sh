#!/usr/bin/bash
set -eoux pipefail

if [ "${EUID:-$(id -u)}" -lt 1000 ]; then
  echo "SkyBlue user setup ran as unsupported user. Exiting."
  exit 1
fi

# TODO: move to the system level
flatpak uninstall --system --delete-data --app org.mozilla.firefox || true
flatpak uninstall --system --unused || true
