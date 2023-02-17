#!/bin/sh

# 登录你的镜像仓库（如果需要）
# docker login --username your_username --password your_password registry.cn-hangzhou.aliyuncs.com

# 拉取最新的镜像
docker-compose pull

# 重启容器
docker-compose up -d