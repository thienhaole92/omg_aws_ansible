deploy:
	ansible-playbook -i hosts deploy-swarm.yml

delete:
	ansible-playbook -i hosts delete-swarm.yml