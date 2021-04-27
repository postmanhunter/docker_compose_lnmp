FROM mongo:4.4


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

CMD ["mongod"]
