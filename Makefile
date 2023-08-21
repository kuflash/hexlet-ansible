add_user:
	ansible-playbook ./playbooks/setup-user-access.yml -i inventory.ini

add_node_user:
	ansible-playbook ./playbooks/setup-node-by-user.yml -i inventory.ini

install_nginx:
	ansible-playbook ./playbooks/nginx.yml -i inventory.ini

prepare_work_env:
	ansible-playbook ./playbooks/work.yml -i inventory.ini -t $(tag)

ping:
	ansible all -i inventory.ini -u kuflash -m ping