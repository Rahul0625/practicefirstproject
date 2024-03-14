FROM openjdk:8
EXPOSE 9090
ADD target/jenkins-docker.jar jenkins-docker.jar
ENTRYPOINT["java","-jar","/jenkins-docker.jar"]