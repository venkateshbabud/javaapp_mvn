# Use an official Java runtime as the base image
FROM openjdk:11
WORKDIR /app
COPY target/colorful-app-1.0.0.jar .
CMD ["java", "-jar", "colorful-app-1.0.0.jar"]
