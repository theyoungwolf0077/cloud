FROM centos:latest
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/moon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip moon.zip
RUN cp -rvf moon/* .
RUN rm -rf moon moon.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
