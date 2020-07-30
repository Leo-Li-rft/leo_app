#!/bin/sh

set -e # fail fast
set -x # print commands

git clone leo_app updated-app

cd updated-app
date > leo.log

git config --global user.email "leoli2@refinitiv.com"
git config --global user.name "leoli2"

git add .
git commit -m "update leo app"
