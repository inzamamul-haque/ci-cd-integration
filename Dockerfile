FROM openjdk:17
ADD target/ci-cd-integration-0.0.1-SNAPSHOT.jar inzamamul-server
EXPOSE 9081
ENTRYPOINT ["java","-jar","inzamamul-server"]
