# ANSIBLE ROLES FOR OMG SERVER

global:
  scrape_interval: 15s
scrape_configs:
  - job_name: prometheus
    scrape_interval: 5s
    static_configs:
      - targets:
          - 'localhost:9090'
  - job_name: node_exporter
    scrape_interval: 5s
    static_configs:
      - targets:
          - '172.31.2.81:9100'
          - '172.31.20.239:9100'
          - '172.31.20.98:9100'
          - '172.31.20.191:9100'
          - '172.31.30.79:9100'
rule_files:
  - alert.rules.yml
alerting:
  alertmanagers:
    - static_configs:
        - targets:
            - '172.31.2.55:9093'


docker swarm how to find out why service can't start

docker service ps --no-trunc {serviceName}

journalctl -u docker.service | tail -n 50 
