FROM node:14 AS build
RUN git clone https://github.com/ditsmod/realworld.git my-app
WORKDIR /my-app
RUN yarn install
RUN yarn boot
RUN cp packages/server/.env-example packages/server/.env
RUN yarn build


### STAGE 2: MYSQL ###
FROM mysql
COPY ./mysql /docker-entrypoint-initdb.d/

