FROM eclipse-temurin:17-jdk-alpine as build
 
ENV APP_HOME /usr/src/app

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY target/*.jar $APP_HOME/app.jar

FROM gcr.io/distroless/java:17 

ENV APP_HOME /usr/src/app

WORKDIR $APP_HOME

COPY --from=build $APP_HOME/app.jar $APP_HOME

CMD ["java", "-jar", "app.jar"]
