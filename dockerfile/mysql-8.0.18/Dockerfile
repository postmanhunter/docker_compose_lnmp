FROM mysql:8.0.18

#维护者信息
LABEL maintainer="1039526501@qq.com"

# 安装基础
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    apt-utils \
    curl \
    sudo \
    git \
    vim \
    wget \
    net-tools \
  && rm -rf /var/lib/apt/lists/*
#容器启动时执行指令
CMD ["mysqld"]
