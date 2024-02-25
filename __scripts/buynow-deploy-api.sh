#!/bin/bash

start_time=`date +%s`
echo "Deploying buynow API..."

cd /opt/buynow/
git reset --hard
git pull
chmod +x -R /opt/buynow/__scripts

cd /opt/buynow/api

npm ci

sudo systemctl restart buynow
sudo systemctl status buynow --no-pager

finish_time=`date +%s`
elapsed_time=$((finish_time  - start_time))
((sec=elapsed_time%60, elapsed_time/=60, min=elapsed_time%60, hrs=elapsed_time/60))
timestamp=$(printf "buynow API deployed in %d minutes and %d seconds." $min $sec)
echo $timestamp

#$SHEL
