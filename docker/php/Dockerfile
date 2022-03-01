FROM php:5.6-apache
COPY docker/php/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY docker/php/start-apache /usr/local/bin
RUN  a2enmod rewrite
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY src/ /var/www/public/onlinemovietickets/
RUN chown -R www-data:www-data /var/www 
CMD ["start-apache"]

