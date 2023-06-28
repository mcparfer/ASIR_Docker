FROM alpine
RUN apk update && apk upgrade
RUN apk add strongswan vim openssl curl
COPY ./net.ipv4.conf /etc/sysctl.d
COPY ./etc/* /etc
COPY ./entrypoint.sh /