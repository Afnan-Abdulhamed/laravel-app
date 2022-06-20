FROM ubi9/php-80

# Add application sources
ADD app-src .

# Install the dependencies
#RUN TEMPFILE=$(mktemp) && \
 #   curl -o "$TEMPFILE" "https://getcomposer.org/installer" && \
  #  php <"$TEMPFILE" && \
   # ./composer.phar install --no-interaction --no-ansi --optimize-autoloader

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD httpd -D FOREGROUND