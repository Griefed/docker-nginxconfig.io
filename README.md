# docker-nginxconfig.io
https://github.com/digitalocean/nginxconfig.io in a container!

Creates a Container which runs [digitalocean's](https://github.com/digitalocean) [nginxconfig.io](https://github.com/digitalocean/nginxconfig.io) with, [node:10.19.0-alpine](https://hub.docker.com/_/node) as the base image, as seen on https://www.digitalocean.com/community/tools/nginx


# Deploy with docker-compose:
```
  nginxconfig.io:
    container_name: nginxconfig.io
    image: griefed/nginxconfig.io
    restart: unless-stopped
    ports:
      - 5000:5000
```
---
# Deploy on Rasbperry Pi
Using this repository, this container can be built and run on a Raspberry Pi, too! I've tested it on a Raspberry Pi 3B.
 - Clone the repo: `git clone https://github.com/Griefed/docker-nginxconfig.io.git`
 - Make the scripts executable: `chmod +x 1_prepare_image.sh 2_finalize.sh`
 - Run script 1: `./1_prepare_image.sh` and when
 ```
 DONE  Compiled successfully in 74932ms 

  App running at:
  - Local:   http://localhost:8081
  - Network: http://192.168.178.27:8081

  Note that the development build is not optimized.
  To create a production build, run npm run build.
 ```
 is displayed, exit with CTRL+C. 
 - Run script 2: `./2_finalize.sh` and when
 ```
 Webpack Bundle Analyzer is started at http://127.0.0.1:8888
Use Ctrl+C to close it
  File                Size                                                                        Gzipped

  dist/js/app.js      340.39 KiB                                                                  96.66 KiB
  dist/css/app.css    291.22 KiB                                                                  36.11 KiB

  Images and other types of assets omitted.

 DONE  Build complete. The dist directory is ready to be deployed.
 INFO  Check out deployment instructions at https://cli.vuejs.org/guide/deployment.html
 ```
 is displayed, exit with CTRL+C.
 - Build the image with: `docker build -t griefed/nginxconf.io .`
 - Start the container with the following docker-compose and `docker-compose up -d`
```
  nginxconfig.io:
    container_name: nginxconfig.io
    image: griefed/nginxconf.io
    restart: unless-stopped
    ports:
      - 5000:5000
```
---
![nginxconfig.io](https://i.imgur.com/NMzM2Hm.png)
