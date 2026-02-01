FROM n8nio/n8n:1.68.0

USER root

RUN apk update && \
    apk add --no-cache ffmpeg font-noto font-noto-emoji

USER node

CMD ["n8n"]
