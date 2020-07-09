FROM centos:latest
ARG filename
RUN yum install net-tools \
    ncurses \
    vim \
    php \
    httpd -y
COPY $filename /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80

