FROM alpine

ENV MAVEN_VERSION 3.6.3
ADD https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz /maven-${MAVEN_VERSION}.tar.gz

RUN tar xzvf /maven-${MAVEN_VERSION}.tar.gz

RUN mkdir -p /opt/maven
RUN mv /apache-maven-${MAVEN_VERSION}/* /opt/maven/

