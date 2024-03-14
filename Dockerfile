FROM adoptopenjdk/maven-openjdk8
EXPOSE 9090
ADD target/jenkns-docker.jar jenkins-docker.jar
ENTRYPOINT["java","-jar","/jenkins-docker.jar"]