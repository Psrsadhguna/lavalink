FROM openjdk:17-slim

WORKDIR /app

# Copy the pre-built JAR
COPY Lavalink.jar .

# Copy application configuration
COPY application.yml .

# Copy plugins if they exist
COPY plugins/ ./plugins/ 2>/dev/null || true

# Expose the default Lavalink port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
