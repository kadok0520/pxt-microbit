FROM node:alpine
MAINTAINER kadok0520(big mouse)gmail(dot)com

RUN apk add --no-cache git \
    && cd /root \
    && mkdir -p pxt-microbit \
    && cd pxt-microbit \
    && npm install -g pxt \
    && pxt target microbit

EXPOSE 80

WORKDIR /root/pxt-microbit

ENTRYPOINT ["pxt", "serve", "-h", "0.0.0.0", "-p", "80","--noBrowser"]
