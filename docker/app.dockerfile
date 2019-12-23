FROM node:latest
MAINTAINER Wiezman Kimchi
ENV NODE_ENV=development
COPY . /var/www
WORKDIR /var/www
RUN npm install --no-optional
ENTRYPOINT ["npm", "start"]
EXPOSE 3000