FROM node:8-alpine
WORKDIR /build/
COPY . /build/
RUN npm install
RUN npm run build

FROM nginx
COPY build /usr/share/nginx/html