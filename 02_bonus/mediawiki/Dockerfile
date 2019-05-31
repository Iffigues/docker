FROM debian

RUN apt-get -y update \
	&& apt-get install -y  php-sqlite3 libsqlite-dev sqlite php php-apcu php-intl mysql-server apache2 wget gzip php-mbstring php-xml php-mysql \
	&& echo extension=pdo.so  >> /etc/php/7.0/apache2/php.ini \
	&& echo extension=php_pdo_sqlite.so >> etc/php/7.0/apache2/php.ini
#COPY  000-default.conf /etc/apache2/sites-available/000-default.conf
WORKDIR /var/www 
RUN mkdir data \
	&&chgrp www-data data \
	&& chmod g+w data
VOLUME /var/www/data
WORKDIR /var/www/html
#COPY LocalSettings.php LocalSettings.php
RUN rm -rf index.html \
	&& wget https://releases.wikimedia.org/mediawiki/1.31/mediawiki-1.31.1.tar.gz \
	&& tar zxvf mediawiki-1.31.1.tar.gz \
	&& mv mediawiki-1.31.1/* . \
