FROM alpine:3.5
MAINTAINER Pavel Derendyaev dddpaul@gmail.com 
RUN apk update \
    && apk add rsyslog \
    && rm -rf /var/cache/apk/*

ADD rsyslog.conf /etc/rsyslog.conf

EXPOSE 514 514/udp
VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
