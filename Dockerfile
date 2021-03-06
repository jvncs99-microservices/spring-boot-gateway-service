FROM openjdk:11.0.8-jre-slim
ENV APP_FILE spring-boot-gateway-service-1.0.jar
ENV APP_HOME /usr/apps
EXPOSE 8080
COPY target/$APP_FILE $APP_HOME/
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $APP_FILE"]