1. docker-compose 构建lnmp环境 项目帮助开发者快速构建本地开发环境，包括Nginx、PHP、MySQL、Redis、mongo、rabbitmq服务镜像，不限操作系统；
2. 此项目适合个人开发者本机部署，可以快速切换服务版本满足学习服务新版本的需求； 也适合团队中统一开发环境，设定好配置后一键部署， 便于提高团队开发效率；
2. PHP 支持 php7.2、php7.3、php7.4、php8.0 版本；
3. MySQL 支持 5.7 、8.0 版本；
4. Redis 6.0 版本；
5. Rabbitmq 3.8 版本
6. Mongodb 4.4版本

### 一、安装

```
1.docker

2.docker-compose

```

### 二、下载代码

```
git clone https://github.com/postmanhunter/docker_compose_lnmp.git docker

```
### 三、初始化

```
sh  docker/bin/begin.sh

```

### 四、一些问题
1.当修改服务的配置文件，比如NGINX增加一个站点的配置文件，增加到docker/config/nginx/conf.d/目录下然后  docker-compose restart

2.redis的配置文件不生效，php的配置文件也没生效---待解决

