install php5.6:
  pkgrepo.managed:
    - humanname: ondrej/php
    - ppa: ondrej/php
    - keyserver: keyserver.ubuntu.com
    - keyid: E5267A6C
    - refresh_db: true
  pkg.installed:
    - pkgs:
      - libapache2-mod-php5.6
      - php5.6 
      - php5.6-bcmath 
      - php5.6-cgi 
      - php5.6-curl 
      - php5.6-enchant 
      - php5.6-gd 
      - php5.6-interbase
      - php5.6-intl
      - php5.6-json
      - php5.6-mbstring
      - php5.6-mcrypt
      - php5.6-mysql
      - php5.6-phpdbg
      - php5.6-pspell
      - php5.6-readline
      - php5.6-soap
      - php5.6-xml
      - php5.6-xmlrpc
      - php5.6-xsl
      - php5.6-zip
      - php-mongo
      - php-cache-lite
      - php-http
      - php-pear
      - php5.6-cli
      - php5.6-common
      - php5.6-dev
      - php5.6-imagick
      - php5.6-imap
      - php5.6-propro
      - php5.6-raphf
    - refresh: True