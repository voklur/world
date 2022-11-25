FROM node:14 AS build
RUN git clone https://github.com/khaledosman/angular-realworld-example-app
WORKDIR /angular-realworld-example-app
COPY environment.ts ./angular-realworld-example-app/src/environments/environment.ts
RUN yarn install
RUN npm install -g @angular/cli 
RUN ng build


### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build angular-realworld-example-app/dist/* /usr/share/nginx/html

EXPOSE 4200