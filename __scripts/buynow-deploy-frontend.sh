#!/bin/bash

start_time=`date +%s`
echo "Deploying buynow frontend..."

cd /opt/buynow/
git reset --hard
git pull
sudo chmod +x -R /opt/buynow/__scripts

cd /opt/buynow/frontend
npm ci
sudo rm -rf .next
npm run build

sudo systemctl restart buynow-frontend
sudo systemctl status buynow-frontend --no-pager

#sudo rm -rf /var/cache/nginx
#sudo systemctl restart nginx
#sudo systemctl status nginx --no-pager

finish_time=`date +%s`
elapsed_time=$((finish_time  - start_time))
((sec=elapsed_time%60, elapsed_time/=60, min=elapsed_time%60, hrs=elapsed_time/60))
timestamp=$(printf "buynow frontend deployed in %d minutes and %d seconds." $min $sec)
echo $timestamp

#$SHELL
