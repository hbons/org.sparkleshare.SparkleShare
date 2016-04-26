# SparkleShare specification for [xdg-app](https://www.freedesktop.org/wiki/Software/xdg-app/).

```bash
# Install xdg-app and xdg-app-builder (on Fedora, your distro may differ)
sudo dnf --enablerepo=updates-testing install xdg-app xdg-app-builder
```


## Install the latest version of SparkleShare
```bash
wget https://github.com/hbons/org.sparkleshare.SparkleShare/raw/master/sparkleshare.gpg
xdg-app --user remote-add --gpg-import=sparkleshare.gpg sparkleshare-releases http://releases.sparkleshare.org
xdg-app --user install sparkleshare-releases org.sparkleshare.SparkleShare
```

You can now start SparkleShare from the apps menu.


# Create a SparkleShare bundle

```bash
# Install GNOME runtime and SDK
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
xdg-app --user remote-add gnome-sdk --gpg-import=gnome-sdk.gpg http://sdk.gnome.org/repo/
xdg-app --user install gnome-sdk org.gnome.Platform 3.18
xdg-app --user install gnome-sdk org.gnome.Sdk 3.18

# Build repository with GNOME runtime and SparkleShare app
xdg-app-builder --repo=repo --gpg-sign=<KEY_ID> app org.sparkleshare.SparkleShare.json
```

