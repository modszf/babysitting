FROM ubuntu:22.04
WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash","/modsbots.sh"]
