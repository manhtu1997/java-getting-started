FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN mvn install
COPY target/*.jar app.jar
CMD ["java","-jar","/app.jar"]
