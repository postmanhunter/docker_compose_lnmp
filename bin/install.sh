#!/bin/bash


# 安装依赖
yum install -y yum-utils device-mapper-persistent-data lvm2

# 添加docker源 
# sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 安装docker
yum install docker-ce -y
# 安装docker命令补全
yum install bash-completion -y

# 安装docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

