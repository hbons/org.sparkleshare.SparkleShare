# SparkleShare specification for [flatpak](http://flatpak.org/)

```bash
# Install flatpak and flatpak-builder (on Fedora, your distro may differ)
sudo dnf install flatpak-builder
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
flatpak remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
flatpak --user install gnome-sdk org.gnome.Platform 3.24
flatpak --user install gnome-sdk org.gnome.Sdk 3.24

# Build repository with GNOME runtime and SparkleShare app
flatpak-builder --repo=repo app org.sparkleshare.SparkleShare.json
```

