#!/bin/bash

envsubst '$${HOSTNAME}' < /root/.theia/settings.json.template > /root/.theia/settings.json

cd /build/browser-app && yarn start --hostname 0.0.0.0
