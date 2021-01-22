FROM node:12.18.2 as build

WORKDIR /app

COPY . .

FROM nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY /app /usr/share/nginx/html
