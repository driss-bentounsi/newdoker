FROM registry.gitlab.com/janpoboril/drupal-composer-docker:7.1-apache

# Install Drush    
RUN composer global require drush/drush:8.0.0-beta14

RUN echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> /root/.bashrc
RUN export PATH="$HOME/.composer/vendor/bin:$PATH"

RUN chmod -R 755 /var/www/drupal
RUN sed -i 's|memory_limit = 512M|memory_limit = -1|g' /usr/local/etc/php/conf.d/drupal-00.ini
