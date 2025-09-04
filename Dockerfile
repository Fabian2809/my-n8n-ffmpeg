# Updated: 2025-01-04 - Force rebuild
FROM n8nio/n8n:latest
USER root
RUN apk update && apk add --no-cache ffmpeg
RUN ffmpeg -version
USER node
CMD ["n8n"]
