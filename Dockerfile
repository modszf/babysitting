FROM node:latest
WORKDIR /app
COPY . ..
RUN npm install
CMD ["/bin/bash","/modsbots.sh"]
