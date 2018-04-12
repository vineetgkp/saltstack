install tomcat7:
  pkg.installed:
    - pkgs:
      - tomcat7
      - tomcat7-admin
      - tomcat7-common
      - tomcat7-docs
      - tomcat7-examples
      - tomcat7-user
    - refresh: True

tomcat-manager:
  user: tomcatuser
  passwd: tomcatuserpass    
