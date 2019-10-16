FROM node:8-alpine
WORKDIR /app/
COPY . /app/
RUN npm run build

FROM nginx
COPY build /usr/share/nginx/html