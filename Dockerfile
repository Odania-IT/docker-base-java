FROM odaniait/docker-base:latest
MAINTAINER Mike Petersen <mike@odania-it.de>

# Install Java.
RUN apt-get update && \
  apt-get install -y openjdk-8-jdk maven && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

