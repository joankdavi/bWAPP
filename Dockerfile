FROM tutum/lamp:latest

RUN chown gitpod:gitpod /var/run/apache2 /var/lock/apache2 /var/run/mysqld

RUN addgroup gitpod www-data

RUN rm -rf /app

COPY  /app /app/

CMD ["/run.sh"]
