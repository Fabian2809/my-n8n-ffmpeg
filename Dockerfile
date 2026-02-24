FROM n8nio/n8n:2.9.2
USER root
RUN apk update && \
    apk add --no-cache ffmpeg font-noto font-noto-emoji
USER node
CMD ["n8n"]
