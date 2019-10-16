FROM node:8-alpine
RUN npm run build

FROM nginx
COPY build /usr/share/nginx/html