# time podman build -t workdir09 -f Containerfile target/

FROM eclipse-temurin:21.0.1_12-jre-alpine

COPY demo-0.0.1-SNAPSHOT.jar /deployment/

CMD ["java", "-jar", "/deployment/demo-0.0.1-SNAPSHOT.jar"]