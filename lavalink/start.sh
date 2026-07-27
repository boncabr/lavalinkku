#!/bin/bash
cd "$(dirname "$0")"

JAVA_OPTS="-Xmx512m -Xms256m"
JAVA_OPTS="$JAVA_OPTS -XX:+UseG1GC"
JAVA_OPTS="$JAVA_OPTS -XX:MaxGCPauseMillis=200"
JAVA_OPTS="$JAVA_OPTS -Djdk.tls.client.protocols=TLSv1.2"

echo "Starting Lavalink 4.2.2..."
echo "Password: $(grep 'password:' application.yml | awk '{print $2}')"
echo "Port: $(grep 'port:' application.yml | head -1 | awk '{print $2}')"
echo "Plugins: youtube-plugin 1.18.2, lavasrc 4.8.3, lavasearch 1.0.0"
echo "---"

exec java $JAVA_OPTS -jar Lavalink.jar
