FROM gitpod/workspace-full:latest

USER root

RUN apt-get update && apt-get -y install apache2 mysql-server
# Install MySQL
RUN apt-get update \
 && apt-get install -y mysql-server \
 && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* \
 && mkdir /var/run/mysqld \
 && chown -R gitpod:gitpod /etc/mysql /var/run/mysqld /var/log/mysql /var/lib/mysql /var/lib/mysql-files /var/lib/mysql-keyring /var/lib/mysql-upgrade

RUN chown gitpod:gitpod /var/run/apache2 /var/lock/apache2

RUN addgroup gitpod www-data

# By default start up apache in the foreground, override with /bin/bash for interative.
CMD /usr/sbin/apache2ctl -D FOREGROUND

USER gitpod

RUN rm -rf /app

COPY /app /app/

CMD ["/run.sh"]
