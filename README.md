# SparkleShare specification for [flatpak](http://flatpak.org/)

```bash
# Install flatpak and flatpak-builder (on Fedora, your distro may differ)
sudo dnf --enablerepo=updates-testing install flatpak flatpak-builder
```


## Install the latest version of SparkleShare
```bash
wget https://github.com/hbons/org.sparkleshare.SparkleShare/raw/master/sparkleshare.gpg
flatpak --user remote-add --gpg-import=sparkleshare.gpg sparkleshare-releases http://releases.sparkleshare.org
flatpak --user install sparkleshare-releases org.sparkleshare.SparkleShare
```

You can now start SparkleShare from the apps menu.


## Create a SparkleShare bundle

```bash
# Install GNOME runtime and SDK
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
flatpak --user remote-add gnome-sdk --gpg-import=gnome-sdk.gpg http://sdk.gnome.org/repo/
flatpak --user install gnome-sdk org.gnome.Platform 3.20
flatpak --user install gnome-sdk org.gnome.Sdk 3.20

# Build repository with GNOME runtime and SparkleShare app
flatpak-builder --repo=repo --gpg-sign=<KEY_ID> app org.sparkleshare.SparkleShare.json
```

