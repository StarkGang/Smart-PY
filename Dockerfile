FROM ubuntu:latest
RUN apt-get -y upgrade && apt-get -y update && apt-get install -y build-essential git jq p7zip wget xvfb zlib1g gpg ffmpeg python3 bash apt-utils aptdaemon bash-completion bc binutils bzip2 cpp coreutils gcc libc-bin libc-dev-bin libc6 make makedev cmake
RUN apt-get install -y bash build-essential cmake curl ffmpeg gcc git gnupg jq libatlas-base-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libboost-python-dev libcurl4-openssl-dev libffi-dev libgconf-2-4 libgtk-3-dev libjpeg-dev libopus-dev libopus0 libpq-dev libreadline-dev libswresample-dev libswscale-dev libssl-dev libx11-dev libxi6 libxml2-dev libxslt1-dev libyaml-dev make mediainfo megatools meson musl musl-dev neofetch ninja-build openssh-client openssh-server openssl p7zip-full pdftk pkg-config procps python3-dev texinfo unzip util-linux wget xvfb yasm zip zlib1g zlib1g-dev 
RUN apt-get autoremove 
RUN chmod +x /usr/local/bin/*
ENV PYTHONUNBUFFERED=1
COPY . .
CMD ./BEGIN
