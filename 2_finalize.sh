#!/bin/bash
#Finalize the installation so we can move it to a docker image/container

cd nginxconf.io

npm test

npm run analyze

echo "CTRL+C to exit after the build is done."
npm run build
