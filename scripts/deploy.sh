#!/bin/sh
ssh ubuntu@18.216.126.153 <<EOF
    cd ~/jenkins-sample
    git pull origin master
    curl -o-   https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh    | bash
    . ~/.nvm/nvm.sh
    nvm install v12.11.0
    npm install
    npm install -g pm2
    pm2 restart ecosystem.config.js
    exit
EOF