#!/bin/bash

rm -Rf ./repo

flatpak-builder --force-clean --repo=sparkleshare.org --gpg-sign=051F66BD app org.sparkleshare.SparkleShare.json
flatpak --user uninstall org.sparkleshare.SparkleShare
flatpak --user remote-delete sparkleshare
flatpak --user remote-add --gpg-import=sparkleshare.gpg sparkleshare ./sparkleshare.org/
flatpak --user install sparkleshare org.sparkleshare.SparkleShare

