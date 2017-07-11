FROM composer/composer:1.1-alpine
MAINTAINER Angel Alvarado <eko3alpha>

COPY composer.json /app/
RUN cd /app \
    && composer global require hirak/prestissimo \
    && composer install

ENTRYPOINT ["/app/vendor/edgedesign/phpqa/phpqa"]
CMD ["--help"]
