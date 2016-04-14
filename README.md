SparkleShare specification for [xdg-app](https://www.freedesktop.org/wiki/Software/xdg-app/).

```bash
# Install latest xdg-app and xdg-app-builder
sudo dnf --enablerepo=updates-testing install xdg-app xdg-app-builder
```

```bash
# Install the GNOME runtime and SDK
xdg-app --user remote-add gnome-sdk --no-gpg-verify http://sdk.gnome.org/repo/
xdg-app --user install gnome-sdk org.gnome.Platform 3.18
xdg-app --user install gnome-sdk org.gnome.Sdk 3.18

# Build a repository with the GNOME runtime and SparkleShare app
xdg-app-builder --repo=repo app org.sparkleshare.SparkleShare.json
```

```bash
# Install and run the SparkleShare app
xdg-app --user remote-add --no-gpg-verify sparkleshare ./repo/
xdg-app --user install sparkleshare org.sparkleshare.SparkleShare
xdg-app run org.sparkleshare.SparkleShare
```

