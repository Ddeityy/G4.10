FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx
COPY ./mysite.conf /etc/nginx/sites-enabled/mysite.conf
WORKDIR /var/www
VOLUME /home/mysite/www
COPY ./data/index.html /home/mysite/www/index.html
RUN chmod 777 /home/mysite/www
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]