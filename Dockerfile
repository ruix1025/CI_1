FROM node:8-alpine
WORKDIR /app/
COPY . /app/
RUN npm install
RUN npm run build

FROM nginx
COPY /app/build /usr/share/nginx/html