FROM node:14
RUN git clone -b backend https://github.com/voklur/world.git my-app
WORKDIR /my-app
RUN cp packages/server/.env-example packages/server/.env
RUN yarn install
RUN yarn boot
RUN yarn build
###RUN yarn start
###ENTRYPOINT yarn start

EXPOSE 3000
