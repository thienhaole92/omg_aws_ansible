deploy:
	ansible-playbook -i hosts deploy-swarm.yml

delete:
	ansible-playbook -i hosts delete-swarm.yml

monitor:
	ansible-playbook -i hosts prometheus-grafana.yml

jenkins:
	ansible-playbook -i hosts jenkins.yml