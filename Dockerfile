FROM alpine:3.6MAINTAINER zhoumaoen <mezhou887@foxmail.com>
ENV TZ "Asia/Shanghai"
RUN echo "https://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories; \echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories;
RUN apk add --update \ python-dev \ curl \ libxml2-dev \ libxslt-dev \ libffi-dev \ musl-dev \ libgcc \ openssh \ openssl-dev \ py-pip \ python \ python-dev \ openssl \ libffi \ gcc \&& pip install twisted \ && pip install scrapy \&& pip install scrapyd \&& pip install spiderkeeper \&& pip install setuptools \&& rm -rf /var/cache/apk/* VOLUME /data
