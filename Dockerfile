FROM composer:latest

ENV FAM_IDENTIFIER flavour/fam-php:0.2.0

RUN mkdir -p /app
RUN mkdir -p /fam-php
COPY composer.* /fam-php/

WORKDIR /fam-php
RUN composer install
RUN rm -rf /tmp/cache

WORKDIR /app

ENV PATH="/fam-php/bin:${PATH}"

# we have to set these because the composer container entrypoint
# otherwise overrides commands which have a special meaning in the
# composer cli
ENTRYPOINT [ "" ]
CMD [ "/bin/sh" ]

COPY bin/* /fam-php/bin/
