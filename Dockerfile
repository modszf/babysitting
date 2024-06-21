FROM ubuntu:22.04
RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	sudo \
	wget \
    	unzip \
	nodejs \
	-y --show-progress 
COPY modsbots.sh /modsbots.sh
RUN chmod 744 /modsbots.sh
COPY index.js /index.js
CMD ["/bin/bash","/modsbots.sh"]
