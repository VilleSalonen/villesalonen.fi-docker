FROM ubuntu:16.04
MAINTAINER Ville Salonen <ville.salonen@iki.fi>

EXPOSE 80

RUN \
  apt-get update && \
  apt-get install -y git jekyll nginx && \
  cd /root && \
  git clone https://github.com/VilleSalonen/villesalonen.fi.git && \
  jekyll build -s /root/villesalonen.fi/ -d /var/www/html/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY root/default /etc/nginx/sites-available/default

CMD service nginx start
