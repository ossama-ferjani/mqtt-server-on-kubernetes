# Use the official Eclipse Mosquitto image from Docker Hub
FROM eclipse-mosquitto

# Copy custom configuration file if needed
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose MQTT port (default is 1883)
EXPOSE 1883

# Start Mosquitto broker when the container starts
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
