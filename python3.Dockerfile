MAINTAINER michaelhe<mching.08@gmail.com>

FROM alpine

RUN apk add python3 \
    && pip3 install --upgrade pip
