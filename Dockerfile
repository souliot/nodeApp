FROM node:9.2-alpine
MAINTAINER BossLin

RUN mkdir /app
# 工作目录
WORKDIR /app

# 复制执行脚本到容器的执行目录
COPY entrypoint.sh /usr/local/bin/

#make the start.sh executable 
RUN chmod 777 /usr/local/bin/entrypoint.sh 

# 向外暴露的端口
EXPOSE 1234

# 配置入口为bash shell
ENTRYPOINT ["entrypoint.sh"]