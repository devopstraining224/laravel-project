FROM mombe090/laravel7.4-ready

MAINTAINER yayamombeya090@gmail.com

WORKDIR /app

COPY . .

RUN composer install && php artisan key:generate

EXPOSE 8000

CMD ["php", "artisan", "serve", "--host=0.0.0.0" ]
