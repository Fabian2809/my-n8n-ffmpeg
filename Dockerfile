# Verwende die offizielle n8n Base
FROM n8nio/n8n:latest

# Wechsle zu root für Installation
USER root

# Font for Emojis
RUN apt-get update && apt-get install -y fonts-noto-core fonts-noto-ui-core

# Debug: Zeige aktuelle OS Info
RUN cat /etc/os-release

# Update package repository
RUN apk update

# Debug: Zeige verfügbare ffmpeg packages
RUN apk search ffmpeg

# Installiere FFmpeg
RUN apk add --no-cache ffmpeg

# Debug: Zeige Installation
RUN which ffmpeg || echo "ffmpeg not in PATH"
RUN ls -la /usr/bin/ffmpeg || echo "ffmpeg not in /usr/bin/"
RUN find / -name "ffmpeg" 2>/dev/null || echo "ffmpeg not found anywhere"

# Teste FFmpeg
RUN ffmpeg -version || echo "ffmpeg command failed"

# Debug: Zeige PATH
RUN echo "PATH: $PATH"

# Wechsle zurück zu node user
USER node

# Standard n8n Command
CMD ["n8n"]
