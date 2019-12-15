FROM node:alpine
MAINTAINER Hong-Da, Ke 

RUN apk update \
    && apk upgrade 

RUN echo "**** install Python ****" && \
    apk add --no-cache python3 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** install pip ****" && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi
    
RUN echo "**** install Microsoft MakeCode ****" \
    && mkdir -p /root/pxt-microbit \
    && cd /root/pxt-microbit \
    && npm install -g pxt \
    && pxt target microbit

EXPOSE 80 3233

WORKDIR /root/pxt-microbit

ENTRYPOINT ["pxt", "serve", "-h", "0.0.0.0", "-p", "80","--noBrowser"]
