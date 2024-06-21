FROM ubuntu:22.04
WORKDIR /app
COPY . ..

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    

CMD ["sh","modsbots.sh"]
