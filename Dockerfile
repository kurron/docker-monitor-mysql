# Pre-built JDK 8 image
FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@jvmguy.com>

ADD https://bintray.com/artifact/download/kurron/maven/org/kurron/example/monitor-mysql/1.0.0.RELEASE/monitor-mysql-1.0.0.RELEASE.jar /opt/example/application.jar

EXPOSE 8300

ENTRYPOINT ["java", "-jar", "/opt/example/application.jar"]

