# ansible
This is the ansible configuration of CSCI E91 class

# ping
ansible all -m ping

ansible jenkins -m yum -a "name=httpd state=installed"
ansible jenkins.harvard.edu -m yum -a "name=httpd state=installed"

# Run 
ansible-playbook 4-apache.yml

#Specify host
ansible-playbook -i webhosts main.yml

# Specify hosts and group
ansible-playbook -i hosts -l jenkins jenkins.yml


