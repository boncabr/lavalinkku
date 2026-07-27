#!/bin/bash
# Script untuk download Lavalink.jar dan plugin-plugin yang diperlukan
set -e

cd "$(dirname "$0")"

echo "Downloading Lavalink 4.2.2..."
curl -L -o Lavalink.jar "https://github.com/lavalink-devs/Lavalink/releases/download/4.2.2/Lavalink.jar"

mkdir -p plugins
echo "Downloading youtube-plugin 1.18.2..."
curl -L -o plugins/youtube-plugin-1.18.2.jar "https://github.com/lavalink-devs/youtube-source/releases/download/1.18.2/youtube-plugin-1.18.2.jar"

echo "Downloading lavasrc-plugin 4.8.3..."
curl -L -o plugins/lavasrc-plugin-4.8.3.jar "https://github.com/topi314/LavaSrc/releases/download/4.8.3/lavasrc-plugin-4.8.3.jar"

echo "Downloading lavasearch-plugin 1.0.0..."
curl -L -o plugins/lavasearch-plugin-1.0.0.jar "https://github.com/topi314/LavaSearch/releases/download/1.0.0/lavasearch-plugin-1.0.0.jar"

echo "Semua file berhasil didownload!"
