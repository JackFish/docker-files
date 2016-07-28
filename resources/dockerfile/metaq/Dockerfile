# VERSION jackfish/metaq
FROM java8-zh-cn:8u91b14
# 签名啦
MAINTAINER jack "askfish@gmail.com"


COPY metaq-server-1.4.6.2.tar.gz metaq-server-1.4.6.2.tar.gz

RUN tar xzf metaq-server-1.4.6.2.tar.gz && \
	mkdir -p /metaq && mv /taobao "/metaq/"

#设置服务端参数
COPY server.ini /metaq/taobao/metamorphosis-server-wrapper/conf/

COPY setHostName.sh /metaq/taobao/metamorphosis-server-wrapper/

# 配置可映射
VOLUME ["/metaq/taobao/metamorphosis-server-wrapper/conf"]

WORKDIR /metaq/taobao/metamorphosis-server-wrapper/

# 启动metaServer
CMD bash setHostName.sh &&\
 bash bin/metaServer.sh start local

# dashboard 8120端口
EXPOSE 8120

# zookeeper 8121端口
EXPOSE 8121

# stats 8123端口
EXPOSE 8123