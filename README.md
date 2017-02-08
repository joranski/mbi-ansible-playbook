# mortgagebuyersinc.com

<if running ansible from update center computer (ansible is a solution to update many servers remotely from one location)>
	ssh-keygen
	ssh-copy-id [-p <nPortNum>] <sUsername>@<xDomain>
</endif>

ansible all -m ping
ansible-playbook playbooks/site.yml
ansible -i hosts --list-hosts all
ansible -i hosts lamp-hummingbird -m ping
### RUN ANSIBLE
ansible-playbook playbooks/site.yml -i inventory/hosts


