FROM openjdk:8-alpine
VOLUME /tmp
ADD build/libs/personhandler-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar", "-web -webAllowOthers -tcp -tcpAllowOthers -browser"]
EXPOSE 8082