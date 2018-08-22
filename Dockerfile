FROM alpine:latest
MAINTAINER michaelhe<mching.08@gmail.com>

RUN apk update -y && \
    apk add py-pip && \
    pip install --upgrade pip && \
    pip install shadowsocks

ENTRYPOINT ["/usr/bin/ssserver", "-p 8388", "-m aes-256-cfb"]
