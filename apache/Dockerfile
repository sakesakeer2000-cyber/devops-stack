FROM httpd:2.4

COPY index.html /usr/local/apache2/htdocs/

COPY httpd-status.conf /usr/local/apache2/conf/extra/httpd-status.conf

RUN echo "Include conf/extra/httpd-status.conf" >> /usr/local/apache2/conf/httpd.conf

EXPOSE 80
