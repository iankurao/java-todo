FROM gradle:7.5.0-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/project
WORKDIR /home/gradle/project
RUN gradle build

# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim
COPY --from=build /home/gradle/project/build/libs/*.jar /app/app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]