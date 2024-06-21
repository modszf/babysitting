FROM ubuntu:22.04
WORKDIR /app
COPY . ..
RUN echo 'Installing additional packages...' && \
	  export DEBIAN_FRONTEND=noninteractive && \
	  apt-get update && \
	  apt-get install \
	  wget \
  	unzip \
	  -y --show-progress 
CMD ["/bin/bash","/modsbots.sh"]
