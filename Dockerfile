FROM ubuntu:disco

RUN apt-get update && \
    apt-get install -y build-essential \
        meson \
        ninja-build \
        git \
        pkg-config \
        libinput10 \
        libinput-dev \
        wayland-protocols \
        libwayland-client0 \
        libwayland-cursor0 \
        libwayland-dev \
        libegl1-mesa-dev \
        libgles2-mesa-dev \
        libgbm-dev \
        libxkbcommon-dev \
        libudev-dev \
        libpixman-1-dev \
        libgtkmm-3.0-dev \
        libjsoncpp-dev \
        libmpdclient-dev \
        libnl-3-dev \
        libnl-genl-3-dev \
        libpulse-dev \
        libdbusmenu-gtk3-dev; \
    apt-get clean
