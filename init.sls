apache2:
  pkg.installed
php7.2:
  pkg.installed

mariadb-client:
  pkg.installed

mariadb-server:
  pkg.installed

php-mysql:
  pkg.installed

/var/www/html/index.html:
  file.managed:
    - source: salt://LAMP/new-index.html

/home/xubuntu/public_html:
  file.directory:
    - name: /home/xubuntu/public_html
    - mode: 755

/home/xubuntu/public_html/index.php:
  file.managed:
  - source: salt://LAMP/default-index.php

/etc/apache2/mods-enabled/userdir.conf:
 file.symlink:
   - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
 file.symlink:
   - target: ../mods-available/userdir.load

/etc/apache2/mods-available/php7.2.conf:
  file.managed:
    - source: salt://LAMP/new-php.conf

apache2service:
 service.running:
   - name: apache2
   - watch:
     - file: /etc/apache2/mods-enabled/userdir.conf
     - file: /etc/apache2/mods-enabled/userdir.load

