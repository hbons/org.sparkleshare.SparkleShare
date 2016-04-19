SparkleShare specification for [xdg-app](https://www.freedesktop.org/wiki/Software/xdg-app/).

```bash
# Install xdg-app and xdg-app-builder (on Fedora, your distro may differ)
sudo dnf --enablerepo=updates-testing install xdg-app xdg-app-builder
```

```bash
# Install GNOME runtime and SDK
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
xdg-app --user remote-add gnome-sdk --gpg-import=gnome-sdk.gpg http://sdk.gnome.org/repo/
xdg-app --user install gnome-sdk org.gnome.Platform 3.18
xdg-app --user install gnome-sdk org.gnome.Sdk 3.18
```

```bash
# Build repository with GNOME runtime and SparkleShare app
xdg-app-builder --repo=repo --gpg-sign=<KEY_ID> app org.sparkleshare.SparkleShare.json
```

```bash
# Install and run SparkleShare app
xdg-app --user remote-add --gpg-import=sparkleshare.gpg sparkleshare ./repo/
xdg-app --user install sparkleshare org.sparkleshare.SparkleShare
xdg-app run org.sparkleshare.SparkleShare
```

