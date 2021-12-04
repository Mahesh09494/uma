FROM openjdk:8-jre-alpine
FROM maven:3.6.0-jdk-11-slim AS build
COPY . .
RUN mvn clean install
EXPOSE 8000
ENTRYPOINT ["java", "/SampleWebApp.war"]
