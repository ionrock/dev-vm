build:
	we vagrant up
	we vagrant provision
	we ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory provision.yml

run-provision:
	we ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory provision.yml

destroy:
	we vagrant destroy 

login:
	ssh eric@`we vagrant ssh-config | grep HostName | cut -f 4 -d ' '`
