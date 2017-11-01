FROM ubuntu:14.04
MAINTAINER mrjin<me@jinfeijie.cn>

WORKDIR /

ENV IDEA_URL=https://raw.githubusercontent.com/jinfeijie/idea/master/idea
ENV SERVER_HTML_URL=https://raw.githubusercontent.com/jinfeijie/idea/master/IntelliJIDEALicenseServer.html 
ENV PORT 8888
ENV USER jinfeijie.cn


RUN set -ex && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget && \
    wget $IDEA_URL && \
    ln -s /idea /usr/local/bin/idea && \
    wget $SERVER_HTML_URL && \
    chmod 777 idea IntelliJIDEALicenseServer.html && \
    apt-get remove -y wget && \
    apt-get autoremove -y

EXPOSE $PORT

CMD nohup idea -l 0.0.0.0 -p $PORT -u $USER -prolongationPeriod 999999999999