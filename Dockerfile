FROM alpine:latest
MAINTAINER michaelhe<mching.08@gmail.com>

RUN apk update -y && \
    apk add py-pip && \
    pip install --upgrade pip && \
    pip install shadowsocks

# 对外暴露8388端口
EXPOSE 8388

ENTRYPOINT ["/usr/bin/ssserver"]
