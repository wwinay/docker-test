FROM centos
RUN yum install httpd -y
RUN echo "Apache" >> /var/www/html/index.html
#echo hello
EXPOSE 80

COPY test /tmp
COPY new /tmp
COPY release_commit.txt /tmp
COPY qa_commit.txt /tmp
COPY master_commit.txt /tmp/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
