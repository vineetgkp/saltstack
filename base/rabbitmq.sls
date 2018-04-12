rabbitmq_repo:
  pkgrepo.managed:
    - humanname: RabbitMQ Repository
    - name: deb http://www.rabbitmq.com/debian/ testing main
    - file: /etc/apt/sources.list.d/rabbitmq.list
    - key_url: https://www.rabbitmq.com/rabbitmq-release-signing-key.asc

rabbitmq_packages:
  pkg.installed:
    - pkgs:
      - rabbitmq-server
    - require:
      - service: rabbitmq-server  

rabbit_user:
  rabbitmq_user.present:
    - password: password
    - force: True
    - tags:
      - monitoring
      - user
    - perms:
      - '/':
        - '.*'
        - '.*'
        - '.*'
    - require:
     - service: rabbitmq-server    

rabbit_test:
  rabbitmq_user.present:
    - password: password
    - force: True
    - tags:
      - monitoring
      - user
      - administrator
    - perms:
      - '/':
        - '.*'
        - '.*'
        - '.*'
    - require:
     - service: rabbitmq-server    

guest:
  rabbitmq_user.absent:
    - runas: rabbitmq

rabbitmq_management:
  rabbitmq_plugin.enabled: []
    - require:
     - service: rabbitmq-server        