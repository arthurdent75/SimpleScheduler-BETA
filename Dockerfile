FROM ghcr.io/hassio-addons/debian-base:7.7.0

# Update Packages
RUN apt-get update -y && apt upgrade -y

# Setup base
RUN apt-get update && apt-get install -y --no-install-recommends \
    coreutils wget curl python3 python3-dev python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install python modules	
RUN pip3 install Flask requests pytz psutil paho-mqtt --break-system-packages

# Copy root filesystem
COPY rootfs /

