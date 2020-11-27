FROM ubuntu

RUN apt update && apt install -y nginx
ARG web1
ADD web /var/www/html

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
