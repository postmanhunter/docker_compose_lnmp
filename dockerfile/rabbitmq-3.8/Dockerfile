FROM rabbitmq:3.8-management

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

COPY rabbitmq_delayed_message_exchange-3.8.0.ez /plugins
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange