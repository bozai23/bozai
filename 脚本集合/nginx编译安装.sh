#!/bin/bash
yum -y install gcc openssl-devel pcre-devel    #安装依赖包
useradd -s /sbin/nologin nginx                 #创建不可登录系统的用户
tar -xf /root/nginx-1.12.2.tar.gz              #释放tar包
cd /root/nginx-1.12.2                          #进入目录
./configure --user=nginx --group=nginx --with-http_ssl_module                   #进行源代码编译并指定用户,组和选择模块       
make && make install                           #编译并安装

