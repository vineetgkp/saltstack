apache_packages:
  pkg.installed:
    - pkgs:
      - apache2

apache mod_rewrite:
  cmd.run:
    - name: /usr/sbin/a2enmod rewrite
    - unless: "[ -f /etc/apache2/mods-enabled/rewrite.load ]"

apache_service:
  service:
    - name: apache2
    - running
    - enable: True
    - require:
      - pkg: apache_packages


/etc/apache2/sites-enabled/salt-openpage.conf:
  apache.configfile:
    - config:
      - VirtualHost:
          this: '*:80'
          ServerName:
            - salt-openpage.com
          ServerAlias:
            - www.salt-openpage.com
          ErrorLog: /var/log/apache2/salt-openpage.com-error_log
          CustomLog: /var/log/apache2/salt-dopenpage.com-access_log combined
          DocumentRoot: /var/www/vhosts/salt-openpage.com
          Directory:
            this: /var/www/vhosts/salt-openpage.com      