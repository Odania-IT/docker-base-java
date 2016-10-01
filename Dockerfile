FROM odaniait/docker-base:alpine
MAINTAINER Mike Petersen <mike@odania-it.de>

# Install base packages
RUN apk update
RUN apk upgrade
RUN apk --update add openjdk8

# Clean APK cache
RUN rm -rf /var/cache/apk/*

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/
