#!/bin/bash

cd sparkleshare.org
echo "releases.sparkleshare.org" > CNAME
git init
git add -A
git commit -m "releases.sparkleshare.org"
git remote add origin git@github.com:hbons/releases.sparkleshare.org.git
git push -f origin gh-pages
cd ..

