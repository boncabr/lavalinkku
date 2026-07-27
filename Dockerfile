FROM eclipse-temurin:19-jre

WORKDIR /lavalink

# Download Lavalink dan plugins saat build
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/* && \
    curl -L -o Lavalink.jar \
      "https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar" && \
    mkdir -p plugins && \
    curl -L -o plugins/youtube-plugin-1.18.2.jar \
      "https://github.com/lavalink-devs/youtube-source/releases/download/1.18.2/youtube-plugin-1.18.2.jar" && \
    curl -L -o plugins/lavasrc-plugin-4.8.3.jar \
      "https://github.com/topi314/LavaSrc/releases/download/4.8.3/lavasrc-plugin-4.8.3.jar" && \
    curl -L -o plugins/lavasearch-plugin-1.0.0.jar \
      "https://github.com/topi314/LavaSearch/releases/download/1.0.0/lavasearch-plugin-1.0.0.jar"

COPY lavalink/application.yml application.yml

EXPOSE ${SERVER_PORT:-2333}

ENTRYPOINT ["java", "-Xmx512m", "-Xms256m", "-XX:+UseG1GC", "-jar", "Lavalink.jar"]
