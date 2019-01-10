#! /bin/bash

yum install httpd -y
echo "Assignment 3: Public Web Server" > /var/www/html/index.html

systemctl start httpd
systemctl enable httpd

userdel -r stakes 2> /dev/null
useradd stakes --create-home --shell /bin/bash

mkdir /home/stakes/.ssh

cat > /home/stakes/.ssh/authorized_keys << EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDdyS33YJTooUWC6VdcM7AOSPAGRCuIaXFsP7EL336NYLDBpXJ6nuWXwdmfA7YeniaX8jxKr88XqqDmP5JL1iSqMElmE8JwOvJWJkNRKLrmjXRKwEqC9eCq5X7LeKV7sYlIQgvpyvu+E8UP3SpIlnjzHIeenv3nQVyc+AdHG0QgXEWQ1d9toOHfrGvTTtH0iO32OqItah7sWmrcL97f6NVlG+sf1Ll9ekwAxA2vGe+h1BfBJ8/H+yM6xN4KVq0Dco7kwbrlIDLXSdMpTpzILyfJRiGi7eMB3qO5qrTLO2Nt1wPXCWQzgTG8Ee8cMlAliBN5r+6HRCXEIg60PbmRtC2r stakes@CSCI91
EOF

chown -R stakes.stakes /home/stakes/.ssh
chmod 700 /home/stakes/.ssh
chmod 600 /home/stakes/.ssh/authorized_keys

echo "stakes ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/stakes

echo >> /var/www/html/index.html
echo This is Assignment 4 Webpage >> /var/www/html/index.html
