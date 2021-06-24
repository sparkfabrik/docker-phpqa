FROM composer:2.1.3

RUN apk add libxslt-dev && docker-php-ext-install xsl \
    && composer global require 'edgedesign/phpqa:v1.10.0' --update-no-dev "symfony/console:~2.8"

ENTRYPOINT ["phpqa"]
CMD ["--help"]
