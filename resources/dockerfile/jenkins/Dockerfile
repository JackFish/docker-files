# jenkins
#FROM jenkins:latest
FROM jenkinsci/jenkins
# 签名啦
MAINTAINER jack "jack.zhou@dextrys.com"
########ADD JDK
USER root

########ADD MAVEN_VERSION
ENV MAVEN_VERSION 3.3.9

RUN mkdir -p /usr/share/maven \
  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven

VOLUME /root/.m2

#add jenkins plugins
RUN mkdir /usr/share/jenkins/temp && \
cd /usr/share/jenkins/temp && \
jar -xf /usr/share/jenkins/jenkins.war && \
rm /usr/share/jenkins/jenkins.war


COPY plugins/*.* /usr/share/jenkins/temp/WEB-INF/plugins/


RUN cd /usr/share/jenkins/temp && \
zip -r /usr/share/jenkins/jenkins.war . && \
rm -R /usr/share/jenkins/temp

