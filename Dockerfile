FROM php:8.5-cli

RUN apt-get update && apt-get install -y unzip

RUN docker-php-ext-install bcmath

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /app
