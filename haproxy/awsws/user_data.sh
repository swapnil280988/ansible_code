#!/bin/bash
sudo useradd ansitar
echo redhat | sudo passwd --stdin ansitar
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config.d/50-cloud-init.conf
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo echo "ansitar  ALL=(ALL)  NOPASSWD:  ALL" >> /etc/sudoers
