FROM mysql:5.6

ADD movietheatredb.sql /docker-entrypoint-initdb.d

ENV MYSQL_DATABASE=movietheatredb \
    MYSQL_ROOT_PASSWORD=hahadude

EXPOSE 3306

