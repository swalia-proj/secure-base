FROM ubuntu:20.04

LABEL maintainer="soniawalia.sw@gmail.com"
LABEL version="1.1"
LABEL description="Secure base image with Python and weekly updated packages"

ENV DEBIAN_FRONTEND=noninteractive

# Update, install Python3 and pip, and clean up
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
