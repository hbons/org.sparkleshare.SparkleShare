# SparkleShare [Flatpak](http://flatpak.org/) spec

First, run `git submodule update --init`.


## Create a SparkleShare flatpak repo

```bash
# Install GNOME runtime and SDK
flatpak --user remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
flatpak --user install gnome org.gnome.Platform 3.28
flatpak --user install gnome org.gnome.Sdk 3.28

# Build repository with GNOME runtime and SparkleShare app
flatpak-builder --repo=./repo ./app org.sparkleshare.SparkleShare.yml
```

It may take a while to build the flatpak (around 30 minutes on my computer), this is normal.


## Install the latest version of SparkleShare from the repo

```bash
flatpak --user remote-add --no-gpg-verify sparkleshare ./repo
flatpak --user install sparkleshare org.sparkleshare.SparkleShare
```

You can now start SparkleShare from the apps menu or by running `flatpak run org.sparkleshare.SparkleShare`.

