#!/bin/bash
ip(){
hostnamectl set-hostname desktop0.example.com
echo  "已配置主机名:desktop0.example.com"
nmcli connection modify 'System eth0' ipv4.method manual ipv4.addresses '172.25.0.10/24 172.25.0.254' ipv4.dns 172.25.254.254 connection.autoconnect yes
nmcli connection up 'System eth0'
echo "ip地址已配置为172.25.0.10/24 网关已配置为172.25.0.254"
}
ip

