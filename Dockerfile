FROM centos
RUN yum install httpd -y
RUN echo "Apache" >> /var/www/html/index.html
#echo hello
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
