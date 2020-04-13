FROM ubuntu:rolling
RUN apt-get update && apt-get install -y \
        bc \
        bluez \
        bluez-hcidump \
        curl \
        git \
        mosquitto-clients \
        procps \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /root
RUN git clone --depth 1 https://github.com/andrewjfreyer/monitor.git
VOLUME ["/data"]
WORKDIR /root/monitor
CMD ["bash", "monitor.sh", "-D", "/data"]
