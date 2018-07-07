#!/bin/bash

rm -Rf ./repo
flatpak-builder --force-clean --repo=./repo ./app org.sparkleshare.SparkleShare.json
flatpak --user uninstall -y org.sparkleshare.SparkleShare; flatpak --user remote-delete sparkleshare
flatpak --user remote-add --no-gpg-verify sparkleshare ./repo
flatpak --user install -y sparkleshare org.sparkleshare.SparkleShare

