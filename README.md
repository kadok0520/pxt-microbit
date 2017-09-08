# pxt-microbit offical site by Microsoft
https://makecode.microbit.org/

# Dockerhub:
https://hub.docker.com/r/kadok0520/pxt-microbit/

# My Note
https://sites.google.com/site/seleniumwangzhanpachong/00pxtmicrobit

# Reference：
https://github.com/Microsoft/pxt-microbit
https://www.npmjs.com/package/pxt-microbit
http://takafuminaka.blogspot.tw/2017/04/chibibit-microbitpxtmicrosoft-make-code.html (Japanese)

# Step:
1. pull image  下載映像檔
$ docker pull kadok0520/pxt-microbit

2. run  執行
$ docker run -d -p 80:80 --name pxt-microbit01 kadok0520/pxt-microbit

3. open your browser  
http://your_docker_server_ip:80


# This image not only online editor by yourself but alse make a pxt server
架設的機器不但可以做為個人使用的線上編輯器，而且也可以用來當作server來使用

