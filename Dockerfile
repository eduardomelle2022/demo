#FROM openjdk:17.0.2-slim
#FROM eclipse-temurin:21-jre-alpine
FROM eclipse-temurin:21.0.1_12-jre-alpine

COPY target/demo-0.0.1-SNAPSHOT.jar /deployments/app.jar

CMD ["java", "-jar", "/deployments/app.jar"]