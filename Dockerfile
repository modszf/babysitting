FROM node:latest
WORKDIR /app
COPY . ..
CMD ["/bin/bash","/modsbots.sh"]
