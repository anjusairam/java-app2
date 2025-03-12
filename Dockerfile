FROM openjdk:11-jdk-slim

WORKDIR /app

COPY target/java-docker-app-1.0.jar app.jar

EXPOSE 8080

# Correct entrypoint for Spring Boot JAR
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

