# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY ./ ./
COPY pom.xml ./

EXPOSE 8080
COPY src ./src
ENTRYPOINT ["java","-jar","/app.jar"]
