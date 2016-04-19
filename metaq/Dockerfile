# VERSION jackfish/metaq
FROM jackzhou/java8
# 签名啦
MAINTAINER jack "askfish@gmail.com"


COPY metaq-server-1.4.6.2.tar.gz metaq-server-1.4.6.2.tar.gz

RUN tar xzf metaq-server-1.4.6.2.tar.gz && \
	mkdir -p /metaq && mv /taobao "/metaq/"

# 配置可映射
VOLUME ["/metaq/taobao/metamorphosis-server-wrapper/conf"]

WORKDIR /metaq/taobao/metamorphosis-server-wrapper/bin

# 启动metaServer
CMD bash metaServer.sh start local

# dashboard 8120端口
EXPOSE 8120

# zookeeper 8121端口
EXPOSE 8121

# stats 8123端口
EXPOSE 8123