FROM nginx:alpine
MAINTAINER Wiezman Kimchi

ARG DEV_DOMAIN
ENV DEV_DOMAIN $DEV_DOMAIN


RUN apk update && apk add \
    openssl \
    bash

COPY /docker/generate-ssl.sh /etc/nginx/generate-ssl.sh
RUN chmod +x /etc/nginx/generate-ssl.sh
RUN cd /etc/nginx && ./generate-ssl.sh

COPY /public /var/www/public
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 -R /var/www/public
EXPOSE 80 443
ENTRYPOINT ["nginx"]
# Parametros extras para o entrypoint
CMD ["-g", "daemon off;"]
