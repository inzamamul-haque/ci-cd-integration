# Test 1
#FROM openjdk:17
#ADD target/ci-cd-integration-0.0.1-SNAPSHOT.jar inzamamul-server
#EXPOSE 9081
#ENTRYPOINT ["java","-jar","inzamamul-server"]

#Test 2
#FROM maven:3.8.4-openjdk-17 as builder

#WORKDIR /usr/src/app

#COPY pom.xml .

#COPY . /usr/src/app

#RUN mvn clean package -DskipTests

#FROM openjdk:17

#COPY --from=builder /usr/src/app/target/*.jar inzamamul-server

#EXPOSE 9081
#ENTRYPOINT ["java","-jar","inzamamul-server"]

#Test 3
FROM maven:3.8.4 as build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD pom.xml $HOME
RUN mvn verify --fail-never
ADD . $HOME
RUN mvn clean package -DskipTests

FROM openjdk:17
COPY --from=build /usr/app/target/*.jar inzamamul-server
ENTRYPOINT ["java","-jar","inzamamul-server"]
