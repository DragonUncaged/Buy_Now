#!/usr/bin/env bash

if [ "$1" == "all" ]; then
  /bin/bash /opt/buynow/__scripts/buynow-deploy-api.sh
  /bin/bash /opt/buynow/__scripts/buynow-deploy-backend.sh
  /bin/bash /opt/buynow/__scripts/buynow-deploy-frontend.sh
elif [ "$1" == "api" ]; then
  /bin/bash /opt/buynow/__scripts/buynow-deploy-api.sh
elif [ "$1" == "backend" ]; then
  /bin/bash /opt/buynow/__scripts/buynow-deploy-backend.sh
elif [ "$1" == "frontend" ]; then
  /bin/bash /opt/buynow/__scripts/buynow-deploy-frontend.sh
else
  echo "Usage: buynow-deploy all|api|backend|frontend"
fi
