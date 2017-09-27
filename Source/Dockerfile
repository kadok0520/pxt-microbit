FROM node:alpine 
MAINTAINER Hong-Da, Ke 

RUN apk add --no-cache git \
   && cd /root \ 
   && git clone https://github.com/microsoft/pxt-microbit \
   && cd /root/pxt-microbit \
   && npm install -g pxt \ 
   && npm install \

EXPOSE 80 3233 
WORKDIR /root/pxt-microbit 
ENTRYPOINT ["pxt", "serve", "-h", "0.0.0.0", "-p", "80","--noBrowser"]

