ARG BUILD_FROM
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

RUN apk update && apk upgrade --no-cache

# Setup base
RUN apk add --no-cache \
	build-base \
	linux-headers \
    coreutils \
    wget \
	curl \
	gcc \
	libc-dev \
	python3 \
	python3-dev \ 
	py-pip 
	
RUN pip3 install Flask requests paho-mqtt pytz psutil


