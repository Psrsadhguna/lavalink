FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copy the pre-built JAR
COPY Lavalink.jar .

# Copy application configuration
COPY application.yml .

# Copy plugins directory
COPY plugins /app/plugins

# Expose the port (Railway will set the PORT env variable)
EXPOSE 5000

# Run Lavalink - Java will read PORT from environment
CMD ["java", "-jar", "Lavalink.jar"]
