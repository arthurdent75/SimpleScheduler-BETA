FROM ghcr.io/hassio-addons/debian-base:7.7.0

# Setup update
RUN apt-get update -y

# Setup base
RUN apt-get install -y python3 python3-pip && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install python modules	
RUN pip3 install --no-cache-dir  Flask requests pytz psutil paho-mqtt --break-system-packages

# Copy root filesystem
COPY rootfs /


