#!/bin/bash
yum -y install  vsftpd
cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.old
sed  -i 's/^#anon/anon/' /etc/vsftpd/vsftpd.conf
chmod 777 /var/ftp/pub
systemctl start vsftpd
systemctl enable vaftpd

