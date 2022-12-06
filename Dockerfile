FROM node:14 AS build
RUN git clone -b frontend https://github.com/voklur/world.git world
WORKDIR /world
RUN yarn install
RUN npm install -g @angular/cli 
RUN ng build


### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build world/dist/* /usr/share/nginx/html/

EXPOSE 4200
