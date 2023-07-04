
FROM maven:3.8.3-openjdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ ./src/
RUN mvn package -DskipTests

# Use a lightweight Java image as the base image
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/colorful-app-1.0.0.jar .
EXPOSE 8080
# Define the command to run the JAR file 
CMD ["java", "-jar", "colorful-app-1.0.0.jar"]
