#!/bin/bash

# stop firewall
systemctl stop firewalld.service

# install ssserver
yum install -y python-setuptools
easy_install pip
pip install shadowsocks

# config
echo '
{
    "server":"0.0.0.0",
    "server_port":443,
    "password":"mypassword",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false,
    "workers": 3
}
' > /etc/shadowsocks.json

# start as a daemon
ssserver -c /etc/shadowsocks.json -d start
