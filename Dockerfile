FROM registry.gitlab.com/janpoboril/drupal-composer-docker:7.1-apache


RUN sed -i 's|memory_limit = 512M|memory_limit = -1|g' /usr/local/etc/php/conf.d/drupal-00.ini
