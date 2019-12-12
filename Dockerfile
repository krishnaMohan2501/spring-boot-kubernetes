FROM openjdk:8-jdk-alpine
FROM maven:alpine
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 8081