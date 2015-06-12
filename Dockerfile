FROM fedora:20
MAINTAINER Juan Roa <jdroa92 at gmail dot com>

RUN yum -y update && yum clean all
RUN yum -y httpd && yum clear all

RUN echo "Apache works" >> /var/www/html/index.html

EXPOSE 80

ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

CMD ["/run-apache.sh"]
