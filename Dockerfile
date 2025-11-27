# Verwende die offizielle n8n Base
FROM n8nio/n8n:latest

# Wechsle zu root für Installation
USER root

# Installiere FFmpeg und Fonts (Alpine-Paketmanager)
RUN apk update && \
    apk add --no-cache \
    ffmpeg \
    font-noto \
    font-noto-emoji

# Teste FFmpeg
RUN ffmpeg -version

# Wechsle zurück zu node user
USER node

# Standard n8n Command
CMD ["n8n"]
