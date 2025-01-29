FROM php:8-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    libonig-dev \
    curl \
    libzip-dev \
    nginx \
    sqlite3 \
    libsqlite3-dev \
    supervisor \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql zip exif pcntl mbstring pdo_sqlite

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Configure PHP-FPM to run as www user
RUN sed -i "s/user = www-data/user = www/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = www/g" /usr/local/etc/php-fpm.d/www.conf

# Configure Nginx
RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled
COPY nginx/conf.d/app.conf /etc/nginx/sites-available/default
RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Create necessary directories (after copying files)
RUN mkdir -p /var/www/storage/app/public \
    && mkdir -p /var/www/storage/framework/{sessions,views,cache} \
    && mkdir -p /var/www/storage/logs \
    && mkdir -p /var/www/bootstrap/cache \
    && mkdir -p /var/log/nginx \
    && mkdir -p /run/nginx \
    && mkdir -p /var/www/public \
    && mkdir -p /var/lib/nginx/body

# Copy application files
COPY --chown=www:www . /var/www

# Set up supervisor
RUN echo '[supervisord]\n\
nodaemon=true\n\
\n\
[program:nginx]\n\
command=nginx -g "daemon off;"\n\
stdout_logfile=/dev/stdout\n\
stdout_logfile_maxbytes=0\n\
stderr_logfile=/dev/stderr\n\
stderr_logfile_maxbytes=0\n\
\n\
[program:php-fpm]\n\
command=php-fpm\n\
stdout_logfile=/dev/stdout\n\
stdout_logfile_maxbytes=0\n\
stderr_logfile=/dev/stderr\n\
stderr_logfile_maxbytes=0\n\
\n\
[program:laravel-setup]\n\
command=/var/www/startup.sh\n\
autostart=true\n\
autorestart=false\n\
stdout_logfile=/dev/stdout\n\
stdout_logfile_maxbytes=0\n\
stderr_logfile=/dev/stderr\n\
stderr_logfile_maxbytes=0\n\
' > /etc/supervisor/conf.d/supervisord.conf

# Create Laravel startup script
RUN echo '#!/bin/bash\n\
cd /var/www\n\
php artisan migrate --force\n\
php artisan cache:clear\n\
php artisan view:clear\n\
php artisan config:clear\n\
' > /var/www/startup.sh \
    && chmod +x /var/www/startup.sh

# Set permissions
RUN chown -R www:www /var/www \
    && chmod -R 777 /var/www/storage \
    && chmod -R 777 /var/www/bootstrap/cache \
    && chown -R www:www /var/log/nginx \
    && chmod -R 777 /var/log/nginx \
    && chown -R www:www /run/nginx \
    && chmod -R 777 /run/nginx \
    && chown -R www:www /var/lib/nginx \
    && chmod -R 777 /var/lib/nginx

# Create SQLite database
RUN mkdir -p /var/www/database \
    && touch /var/www/database/database.sqlite \
    && chown -R www:www /var/www/database \
    && chmod -R 777 /var/www/database

EXPOSE 81

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]