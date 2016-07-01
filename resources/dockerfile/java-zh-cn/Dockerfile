# 10.0.72.100:5000/java8-zh-cn:latest
FROM localhost:5000/java:8u91b14
# 签名啦
MAINTAINER jack "jack.zhou@dextrys.com"

# Ensure UTF-8 locale
#COPY locale /etc/default/locale
RUN locale-gen zh_CN.UTF-8 &&\
  DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales
RUN locale-gen zh_CN.UTF-8
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh
ENV LC_ALL zh_CN.UTF-8