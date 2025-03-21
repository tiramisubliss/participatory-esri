FROM node:16-slim

WORKDIR /app

COPY package*.json ./
COPY . ./

RUN npm install

RUN npm run build

COPY . ./

FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

COPY . /usr/share/nginx/html

COPY --from=0 /app/dist /usr/share/nginx/html
