#!/bin/bash

set -x

# Vagrant起動
vagrant up

# ssh接続
vagrant ssh
# user：vagrant
# password：vagrant

# OSアップデート
sudo yum update -y

# タイムゾーン変更
sudo timedatectl set-timezone Asia/Tokyo

# システムロケール変更
sudo localectl set-locale LANG=ja_JP.UTF-8

# 開発ツールインストール
sudo yum groupinstall 'Development Tools' -y

# Nodeインストール
su -
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
exit
sudo yum install nodejs -y

# Error: EACCES: permission denied, access対策
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo export PATH=~/.npm-global/bin:$PATH >> ~/.bash_profile
source ~/.bash_profile

# gatsbyインストール
npm install --global gatsby-cli

# gatsbyサンプルプロジェクト作成
cd /vagrant
gatsby new gatsby-site

# gatbyスタート
cd gatsby-site
gatsby develop --host=0.0.0.0