# Sky Blue Linux

This a custum OCI Linux image based on the Project Bluefin DX with several custom modifications.
N.B. At the moment bluefin-dx-nvidia-open image is used as a base.

## Installation

* Install the latest [BlueFin](https://projectbluefin.io/)
* Switch to the Sky Blue image

```bash
sudo bootc switch ghcr.io/chapati/sky-blue-nvidia-open:stable --enforce-container-sigpolicy
systemctl reboot
```

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/chapati/[IMAGE NAME]
```
