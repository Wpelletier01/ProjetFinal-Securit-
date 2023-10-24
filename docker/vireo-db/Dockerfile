FROM mariadb:latest

ENV MARIADB_DATABASE='vireo'
ENV MARIADB_USER='vireo-backend'
ENV MARIADB_PASSWORD='crosemont'
ENV MARIADB_ROOT_PASSWORD='crosemont'

EXPOSE 3306


COPY database.sql /docker-entrypoint-initdb.d/


