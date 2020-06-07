FROM gitpod/workspace-full:latest

#USER root
# optional: use a custom apache config.
#COPY apache.conf /etc/apache2/apache2.conf

# optional: change document root folder. It's relative to your git working copy.
ENV APACHE_DOCROOT_IN_REPO="app"
#RUN apt-get update && apt-get -y install mysql-server
# Install MySQL
#RUN apt-get update \
# && apt-get install -y mysql-server \
# && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/* \
# && mkdir /var/run/mysqld \
# && chown -R gitpod:gitpod /etc/mysql /var/run/mysqld /var/log/mysql /var/lib/mysql /var/lib/mysql-files /var/lib/mysql-keyring /var/lib/mysql-upgrade

#RUN chown gitpod:gitpod /var/run/apache2 /var/lock/apache2

#RUN addgroup gitpod www-data

# By default start up apache in the foreground, override with /bin/bash for interative.
#CMD /usr/sbin/apache2ctl -D FOREGROUND

#RUN rm -rf /app

#COPY /app /app/

CMD ["/run.sh"]
