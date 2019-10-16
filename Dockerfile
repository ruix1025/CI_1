FROM node:8-alpine
RUN npm install
RUN npm run build

FROM nginx
COPY build /usr/share/nginx/html