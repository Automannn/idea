FROM ubuntu:14.04
MAINTAINER mrjin<me@jinfeijie.cn>

WORKDIR /

ENV PORT 9501
ENV USER jinfeijie.cn

COPY conf/* /

RUN set -ex && \
    ln -s /idea /usr/local/bin/idea && \
    chmod 777 idea IntelliJIDEALicenseServer.html

EXPOSE $PORT

CMD nohup idea -l 0.0.0.0 -p $PORT -u $USER -prolongationPeriod 999999999999