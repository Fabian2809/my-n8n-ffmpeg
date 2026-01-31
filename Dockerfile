FROM n8nio/n8n:latest

USER root

RUN apk update && \
    apk add --no-cache ffmpeg font-noto-cjk

RUN ffmpeg -version

USER node

CMD ["n8n"]
