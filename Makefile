install_nginx:
	ansible-playbook ./playbooks/nginx.yml -i inventory.ini

prepare_work_env:
	ansible-playbook ./playbooks/work.yml -i inventory.ini -t $(tag)

ping:
	ansible all -i inventory.ini -u kuflash -m ping