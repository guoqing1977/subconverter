FROM alpine:3.8
MAINTAINER leosun <leosunsl@outlook.com>

#RUN apk add wget

WORKDIR /
ENV SUB_VER 0.1.1

RUN set -x && \
    wget --no-check-certificate https://github.com/tindy2013/subconverter/releases/download/v${SUB_VER}/subconverter_linux64.tar.gz && \
    tar xzf subconverter_linux64.tar.gz && \
    rm subconverter_linux64.tar.gz && \
    sed -i 's/port=25500/port=443/g'  pref.ini
 
CMD ./subconverter

EXPOSE 443
