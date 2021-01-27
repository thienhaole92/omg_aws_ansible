deploy:
	ansible-playbook -i hosts deploy-swarm.yml

delete:
	ansible-playbook -i hosts delete-swarm.yml

monitor:
	ansible-playbook -i hosts prometheus-grafana.yml

jenkins:
	ansible-playbook -i hosts jenkins.yml

haproxy:
	ansible-playbook -i hosts haproxy.yml

pt:
	ansible-playbook -i hosts portainer-traefik.yml

gluster:
	ansible-playbook -i hosts gluster.yml

swarm:
	ansible-playbook -i hosts swarm.yml