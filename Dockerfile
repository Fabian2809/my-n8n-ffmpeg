# Updated: 2025-01-04 - Force rebuild
# Verwende die offizielle n8n Base
FROM n8nio/n8n:latest

# Wechsle zu root für Installation
USER root

# Update package list und installiere FFmpeg + dependencies
RUN apk update && \
    apk add --no-cache \
    ffmpeg \
    ffmpeg-dev \
    && rm -rf /var/cache/apk/*

# Verifiziere Installation
RUN ffmpeg -version

# Stelle sicher, dass ffmpeg im PATH verfügbar ist
RUN which ffmpeg && ls -la /usr/bin/ffmpeg

# Wechsle zurück zu node user (wichtig für n8n)
USER node

# Setze Arbeitsverzeichnis
WORKDIR /home/node

# Standard n8n Command
CMD ["n8n"]
