ARG BUILD_FROM=ghcr.io/hassio-addons/base:12.2.6
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

RUN apk update && apk upgrade --no-cache

# Setup base
RUN apk add --no-cache \
    coreutils=9.1-r0 \
    wget=1.21.3-r0 \
	curl \
	python3 \
	python3-dev \ 
	py-pip 
	
RUN pip3 install Flask requests paho-mqtt pytz psutil


