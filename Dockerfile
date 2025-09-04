FROM n8nio/n8n:latest
USER root

# System update und FFmpeg installieren
RUN apk update && \
    apk add --no-cache ffmpeg ffmpeg-dev && \
    ffmpeg -version

USER node
CMD ["n8n"]
