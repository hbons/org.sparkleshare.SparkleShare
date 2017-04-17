#!/bin/bash

rm -Rf ./sparkleshare.org

flatpak-builder --force-clean --repo=sparkleshare.org app org.sparkleshare.SparkleShare.json
flatpak --user uninstall org.sparkleshare.SparkleShare
flatpak --user remote-delete sparkleshare
flatpak --user remote-add --no-gpg-verify sparkleshare ./sparkleshare.org
flatpak --user install sparkleshare org.sparkleshare.SparkleShare

