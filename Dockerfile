FROM openjdk:17-slim

WORKDIR /app

# Copy the pre-built JAR
COPY Lavalink.jar .

# Copy application configuration
COPY application.yml .

# Copy plugins directory
COPY plugins /app/plugins

# Expose the default Lavalink port
EXPOSE 2333

# Set the port from environment variable (Railway sets PORT)
ENV SERVER_PORT=${PORT:-2333}

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
