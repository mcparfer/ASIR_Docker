FROM alpine
RUN apk add --update --no-cache php openssh curl
RUN adduser -h /srv -s /bin/sh -D webuser
RUN echo -n 'webuser:12345' | chpasswd
ENTRYPOINT ["/srv/entrypoint.sh"]
WORKDIR /srv
COPY ./index.php /srv
COPY ./hola.html /srv
COPY ./entrypoint.sh /srv