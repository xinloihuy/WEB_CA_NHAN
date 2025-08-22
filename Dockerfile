FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM tomcat:10-jdk21
WORKDIR /usr/local/tomcat/webapps
COPY --from=build /app/target/*.jar .