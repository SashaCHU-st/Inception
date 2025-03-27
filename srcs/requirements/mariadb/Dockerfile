FROM alpine:3.20.5

EXPOSE 3306  

RUN apk update && apk add --no-cache mariadb mariadb-client

COPY conf/mariadb.conf /etc/mariadb/mariadb.conf


COPY ./tools/mariadb.sh /usr/local/bin/
RUN chmod 644 /usr/local/bin/mariadb.sh


ENTRYPOINT ["mariadb.sh"]