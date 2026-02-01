FROM n8nio/n8n:latest

RUN cat /etc/os-release

USER node

CMD ["n8n"]
