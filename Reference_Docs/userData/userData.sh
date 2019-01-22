#! /bin/bash
# Install httpd
yum install httpd -y
#Create a file with the content CSCI E-91
echo "CSCI E-91, week 7 : Autoscalling and Elastic Load Balancer " > /var/www/html/index.html
# Start and enable the service
systemctl start httpd
systemctl enable httpd


# Delete the user if exist
userdel -r fadel 2> /dev/null
# Create user fadel with home directory and bash for shell
useradd fadel --create-home --shell /bin/bash
# As a user root, create .ssh folder for fadel
mkdir /home/fadel/.ssh
# As a user root, create authorized_keys file inside .ssh folder
cat > /home/fadel/.ssh/authorized_keys << EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7a98xqol/emQKxyK4d317fpZQLM5aiRKXAqZVZ7W9F3yHqVeJ+w8tRW4h0vxxvqMAzD62Pef7aDWwwpmcJaxpvudL2zwuopDEdQZ/OLqxZpQQtnLVcOQmyj1rdRhg6Q37P5y68TNj0rtM4XtblnmUiMVa2ANFPXCmBUIXji1/SQZDCfz1VBHF1btpTcHQiQyWwRiIZH1nuEayI+FnK1bvvgNAMZFoS/b1Z1LXvtPvfGFKwZe7aLIKuc2qzkZ5W+yVU8SW2hrbRCHuCMwN+N8ajx+keBAZlMOY9ZQRLycJVjqvSC4kfmvGiYM0YECX2M1SrbOC2/7vpHGBzUbBFkLF
EOF


# Change the ownership of /home/fadel/.ssh and its files from root(the user 
# who created the folder) to the user fadel
chown -R fadel.fadel /home/fadel/.ssh
# Change the permission of the folder and the file 
chmod 700 /home/fadel/.ssh
chmod 600 /home/fadel/.ssh/authorized_keys
# Add fadel to the sudoers user to have permission to be root
echo "fadel  ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/fadel
# Add to the content of the webpage the ips
public_ipv4=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
echo My Public IP is : $public_ipv4  >> /var/www/html/index.html
mkdir /var/www/html/images
mkdir /var/www/html/files
echo "This is the images folder" > /var/www/html/images/index.html
echo "This is the files folder"  > /var/www/html/files/index.html


