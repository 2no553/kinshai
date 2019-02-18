#!/bin/bash

set -xeu -C 

# install development tools
yum upgrade -y
yum groupinstall -y 'Development Tools' libGL

# set linux
sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.UTF-8

# install node
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
yum install -y nodejs