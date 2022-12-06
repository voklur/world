FROM mysql
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=realworld
###ENV MYSQL_USER=root
ADD git.sql /docker-entrypoint-initdb.d/git.sql

EXPOSE 3306
