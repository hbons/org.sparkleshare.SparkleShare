# SparkleShare [Flatpak](http://flatpak.org/) spec


## Create a SparkleShare flatpak repo

```bash
# Install GNOME runtime and SDK
flatpak --user remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
flatpak --user install gnome org.gnome.Platform 3.24
flatpak --user install gnome org.gnome.Sdk 3.24

# Build repository with GNOME runtime and SparkleShare app
flatpak-builder --repo=./repo ./app org.sparkleshare.SparkleShare.json
```


## Install the latest version of SparkleShare from the repo
```bash
flatpak --user remote-add --no-gpg-verify sparkleshare ./repo
flatpak --user install sparkleshare org.sparkleshare.SparkleShare
```

You can now start SparkleShare from the apps menu or by running `flatpak run org.sparkleshare.SparkleShare`.

