FROM ubuntu
MAINTAINER Samuel Cailliere (test@test.test)
RUN apt-get update
RUN apt-get install -y nginx
COPY siteweb/* /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
