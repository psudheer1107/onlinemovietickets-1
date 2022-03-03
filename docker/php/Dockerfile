FROM php:5.6-apache
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN  a2enmod rewrite
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY src/ /var/www/public/onlinemovietickets/
RUN chown -R www-data:www-data /var/www 
RUN chmod +x /usr/local/bin/start-apache

