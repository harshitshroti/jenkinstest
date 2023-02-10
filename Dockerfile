


FROM openjdk:8-jdk-alpine
#FROM openjdk:11-jre-slim
#FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine-slim
RUN apk update
RUN apk upgrade
RUN apk add curl
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
