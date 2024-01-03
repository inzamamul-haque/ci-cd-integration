#FROM openjdk:17
#ADD target/ci-cd-integration-0.0.1-SNAPSHOT.jar inzamamul-server
#EXPOSE 9081
#ENTRYPOINT ["java","-jar","inzamamul-server"]

FROM maven:3.8.4-openjdk-17 as builder

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN mvn clean install

FROM openjdk:17

COPY --from=builder /usr/src/app/target/*.jar inzamamul-server

EXPOSE 9081
ENTRYPOINT ["java","-jar","inzamamul-server"]
