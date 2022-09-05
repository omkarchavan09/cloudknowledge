From centos:latest
MAINTAINER omkar.pro.09@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/basco.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip basco.zip
RUN cp -rvf basco/*
RUM rm -rf basco basco.zip
CMD ["/usr/sbin/httpd', "-D", "FOREGROUND"]
EXPOSE 80
