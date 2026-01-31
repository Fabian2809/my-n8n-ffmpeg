FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg fonts-noto && \
    rm -rf /var/lib/apt/lists/*

RUN ffmpeg -version

USER node

CMD ["n8n"]
