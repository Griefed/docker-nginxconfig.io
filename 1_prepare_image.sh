#!/bin/bash
#Downloads the nginxconfig.io repo, installs dependencies, starts dev run

git clone https://github.com/digitalocean/nginxconfig.io.git ./nginxconf.io

cd nginxconf.io

npm ci

echo "Open development server http://localhost:8080"
echo "CTRL+C to exist after you're satisfied with the result."
npm run dev
