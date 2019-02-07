#!/bin/bash

set -Ceux

# OSアップデート
yum update -y

# タイムゾーン変更
timedatectl set-timezone Asia/Tokyo

# システムロケール変更
localectl set-locale LANG=ja_JP.UTF-8

# 開発ツールインストール
yum groupinstall 'Development Tools' -y

# Nodeインストール
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
yum install nodejs -y

# Error: EACCES: permission denied, access対策
su - vagrant << EOS
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo export PATH=~/.npm-global/bin:$PATH >> ~/.bash_profile
source ~/.bash_profile
EOS

# gatsbyインストール
#npm install --global gatsby-cli

# gatsbyサンプルプロジェクト作成
#cd /vagrant
#gatsby new gatsby-site

# gatbyスタート
#cd gatsby-site
#gatsby develop --host=0.0.0.0

# ssh時のディレクトリをvagrantに設定
#echo 'cd /vagrant' >> /home/vagrant/.bash_profile