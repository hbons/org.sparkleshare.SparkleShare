#!/bin/bash

rm -Rf ./app # Add new --force-clean option to xdg-app-builder later
rm -Rf ./repo

xdg-app-builder --repo=sparkleshare.bitbucket.org app org.sparkleshare.SparkleShare.json
xdg-app --user uninstall org.sparkleshare.SparkleShare
xdg-app --user remote-delete sparkleshare
xdg-app --user remote-add --no-gpg-verify sparkleshare ./sparkleshare.bitbucket.org/
xdg-app --user install sparkleshare org.sparkleshare.SparkleShare

