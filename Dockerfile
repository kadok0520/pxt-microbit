FROM node:alpine
MAINTAINER Hong-Da, Ke 

RUN npm uninstall cordova ionic \
    && npm cache clean -f
   
RUN npm install -g ionic@3.4.0 \
    && npm install -g cordova@7.0.1   
    
RUN mkdir -p /root/pxt-microbit \
    && cd /root/pxt-microbit \
    && npm install -g pxt \
    && pxt target microbit

EXPOSE 80 3233

WORKDIR /root/pxt-microbit

ENTRYPOINT ["pxt", "serve", "-h", "0.0.0.0", "-p", "80","--noBrowser"]
