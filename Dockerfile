FROM n8nio/n8n:latest

USER root

RUN apt update && apt install -y ffmpeg && apt clean

USER node

CMD ["n8n"]
