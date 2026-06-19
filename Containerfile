# time podman build -t workdir?? -f Containerfile ../quarkus/target

FROM eclipse-temurin:21.0.1_12-jre-alpine

COPY demo-0.0.1-SNAPSHOT.jar /deployment/

CMD ["java", "-jar", "/deployment/demo-0.0.1-SNAPSHOT.jar"]