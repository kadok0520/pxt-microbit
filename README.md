# pxt-microbit
# from：
https://makecode.microbit.org/
https://github.com/Microsoft/pxt-microbit
https://www.npmjs.com/package/pxt-microbit
http://takafuminaka.blogspot.tw/2017/04/chibibit-microbitpxtmicrosoft-make-code.html (日文)

# dockerhub:
https://hub.docker.com/r/kadok0520/pxt-microbit/

# my note
https://sites.google.com/site/seleniumwangzhanpachong/00pxtmicrobit

# step:
1. pull image  下載映像檔
$ docker pull kadok0520/pxt-microbit

2. run  執行
$ docker run -d -p 80:80 --name pxt-microbit01 kadok0520/pxt-microbit

3. open your browser  
http://your_server_ip:80

# You can connect any machine to this server to use this application
架設的機器可以當server來使用

# Every client needs about 70 MB ram memory
每個客戶端大約使用70MB的記憶體
