FROM node:10.19.0-alpine

LABEL   maintainer="Griefed <griefed@griefed.de>"
LABEL   description="Based on https://do.co/nginxconfig using https://github.com/digitalocean/nginxconfig.io \
A nginx config generator on steroids"

RUN     apk update && apk upgrade && npm install -g serve

RUN     mkdir /opt/nginxconf.io

WORKDIR /opt/nginxconf.io/

COPY ./nginxconf.io/ .

EXPOSE 5000

CMD ["serve","-s","dist"]
