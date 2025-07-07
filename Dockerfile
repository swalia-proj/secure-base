FROM ubuntu:20.04

LABEL maintainer="soniawalia.sw@gmail.com"
LABEL version="1.0"
LABEL description="Secure base image with weekly updated packages"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
