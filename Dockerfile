FROM openjdk:17.0.2-jdk
VOLUME /tmp
EXPOSE 8090
ADD ./target/apigateway-0.0.1-SNAPSHOT.jar api-gateway.jar
ENTRYPOINT ["java","-jar","api-gateway.jar","--eureka.client.service-url.defaultZone=http://eureka:8761/eureka"]
