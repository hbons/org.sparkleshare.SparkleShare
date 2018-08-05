# SparkleShare [Flatpak](http://flatpak.org/) spec

This spec is used to make SparkleShare available on [Flathub](https://flathub.org/apps/details/org.sparkleshare.SparkleShare). If you just want to use the latest stable release, it's easiest to just install SparkleShare from there.

If you're interested in installing the latest nightly SparkleShare version, do read on.


## Install dependencies and build the flatpak

First, run `git submodule update --init`.


```bash
# Install the GNOME runtime and SDK
flatpak --user remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
flatpak --user install gnome org.gnome.Platform 3.28
flatpak --user install gnome org.gnome.Sdk 3.28

# Build or update the latest nightly SparkleShare from master
flatpak-builder --repo=./repo ./app org.sparkleshare.SparkleShare.Nightly.yml
```

It may take a while to build the flatpak (around 30 minutes on my computer), this is normal.


## Install the built flatpak from the repo

```bash
flatpak --user remote-add --no-gpg-verify sparkleshare ./repo
flatpak --user install sparkleshare org.sparkleshare.SparkleShare
```

You can now start SparkleShare from the apps menu or by running `flatpak run org.sparkleshare.SparkleShare`.

I've added two scripts to automate the build an installation steps after you've installed the GNOME runtime and SDK. `./build-stable.sh` builds the last released version, and `./build-nightly.sh` builds the last commit on [master](https://www.github.com/hbons/SparkleShare/tree/master). Simply rerun the script again to build any new commits.

