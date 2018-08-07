FROM centos
RUN yum install httpd -y
RUN echo "Apache" >> /var/www/html/index.html
#echo hello
EXPOSE 80

COPY test /tmp
COPY new /tmp
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
