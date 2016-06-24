FROM alpine:latest
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

RUN apk update \
    && apk add ngircd \
    && rm -rf /var/cache/apk/*

ADD ngircd.conf /etc/ngircd/ngircd.conf
ADD ngircd.motd /etc/ngircd/ngircd.motd

COPY entrypoint.sh /usr/bin/

EXPOSE 6667

ENTRYPOINT [ "entrypoint.sh" ]
