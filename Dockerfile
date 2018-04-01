# This container simply runs BIND
FROM alpine:latest

RUN apk --update upgrade && \
    apk add --update bind && \
    rm -rf /var/bind/* && \ 
    rm -rf /var/cache/apk/*

COPY bind.sh /bind.sh
RUN chmod 755 /bind.sh
EXPOSE 53/udp 53/tcp 953/tcp 
VOLUME ["/etc/bind", "/var/bind"]
CMD ["/bind.sh"]
