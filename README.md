# Sky Blue Linux

This a custum OCI Linux image based on the Project Bluefin DX with several custom modifications.
N.B. At the moment bluefin-dx-nvidia-open image is used as a base.

## Image Features

* Google Chrome stable
* Firefox flatpak to native package
* Firefox developer edition
* Sublime Merge
* Obsidian flatpak
* Telegram Desktop flatpak
* Custom dash-to-dock defaults including disabling overview on startup

## Installation

* Install the latest [BlueFin](https://projectbluefin.io/)
* Switch to the Sky Blue image

```bash
sudo bootc switch ghcr.io/chapati/sky-blue-nvidia-open:stable --enforce-container-sigpolicy
systemctl reboot
```

Already exisitng user settings are not overwritten. To enjoy full spectrum of features including all defaults it is 
advised to create a new user.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/chapati/[IMAGE NAME]
```

## Credits

Many thanks to everybody who made my custom distro possible!

- [Universal Blue](https://universal-blue.org/)
- [Project Bluefin](https://projectbluefin.io/)
- [BlueBuild](https://blue-build.org/)
- [Rich Renomeron](https://github.com/rrenomeron/bootc-images)
