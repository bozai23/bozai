#!/bin/bash
rm -rf /etc/yum.repos.d/*.repo
echo '[abc]
name=aabbcc
baseurl=http://classroom/content/rhel7.0/x86_64/dvd
enable=1
gpgcheck=0' > /etc/yum.repos.d/abcdef.repo
