FROM php:8.3.10-fpm-alpine3.20
# Install necessary packages and PHP extensions
RUN apk update && apk add --no-cache \
    bash\
    zip \
    unzip \
    git \
    vim \
    bash \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    oniguruma-dev \
    libxml2-dev \
    icu-dev \
    g++ \
    make \
    autoconf

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql mbstring exif pcntl bcmath intl



# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer



WORKDIR /var/www/html