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
          - '172.31.2.223:9100'
          - '172.31.20.251:9100'
          - '172.31.20.38:9100'
          - '172.31.20.89:9100'
          - '172.31.30.48:9100'
rule_files:
  - alert.rules.yml
alerting:
  alertmanagers:
    - static_configs:
        - targets:
            - '172.31.2.43:9093'


docker swarm how to find out why service can't start

docker service ps --no-trunc {serviceName}

journalctl -u docker.service | tail -n 50 
