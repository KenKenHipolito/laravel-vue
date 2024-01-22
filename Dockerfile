FROM whoamiken/laravel-fpm:8.3-latest


COPY --chown=www-data:www-data . /var/www/html/aims

# Set permissions for the writable directories
RUN chmod -R 755 \
    /var/www/html/aims/storage \
    /var/www/html/aims/bootstrap/cache \
    /var/www/html/aims/storage/framework/sessions \
    /var/www/html/aims/storage/framework/cache \
    /var/www/html/aims/storage/framework/views \
 && chown -R www-data:www-data \
    /var/www/html/aims/storage \
    /var/www/html/aims/bootstrap/cache \
    /var/www/html/aims/storage/framework/sessions \
    /var/www/html/aims/storage/framework/cache \
    /var/www/html/aims/storage/framework/views