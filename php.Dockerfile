FROM php:8-fpm

# Copy composer.lock and composer.json
COPY composer.lock composer.json /var/www/

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
    libzip-dev  \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd


# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql zip exif pcntl mbstring
# RUN docker-php-ext-configure gd --with-jpeg --with-webp --with-freetype
# RUN docker-php-ext-install gd

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# RUN apt-get install -y nodejs npm
# # Install the application's dependencies into the node_modules's cache directory.
COPY package.json ./
COPY package-lock.json ./
# RUN npm install

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

RUN mkdir -p /var/www/storage /var/www/public/storage
RUN php artisan storage:link
RUN chown -R www:www /var/www/storage /var/www/public/storage
RUN chmod -R 775 /var/www/storage /var/www/public/storage

# Copy existing application directory permissions
COPY --chown=www:www . /var/www

# Change current user to www
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]