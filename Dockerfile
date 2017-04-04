FROM composer/composer
MAINTAINER Angel Alvarado <eko3alpha>

RUN composer global require 'edgedesign/phpqa:v1.10.0' --update-no-dev "symfony/console:~2.8"

ENTRYPOINT ["phpqa"]
CMD ["--help"]
