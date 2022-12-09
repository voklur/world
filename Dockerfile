FROM mysql:debian
ENV MYSQL_ROOT_HOST: '%'
###ENV MYSQL_HOST=0.0.0.0
ENV MYSQL_USER=real
ENV MYSQL_PASSWORD=real
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=realworld
###ENV MYSQL_USER=root
ADD git.sql /docker-entrypoint-initdb.d/git.sql

EXPOSE 3306
