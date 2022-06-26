FROM amd64/alpine:3.14
RUN apt-get -y upgrade && apt-get install -y bash python3 build-essential cmake ffmpeg gcc git gnupg jq libatlas-base-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libboost-python-dev libcurl4-openssl-dev libffi-dev libgconf-2-4 libgtk-3-dev libjpeg-dev libjpeg62-turbo-dev libopus-dev libopus0 libpq-dev libreadline-dev libswresample-dev libswscale-dev libssl-dev libwebp-dev libx11-dev libxi6 libxml2-dev libxslt1-dev libyaml-dev linux-headers-amd64 make openssh-client openssh-server openssl p7zip-full pdftk pkg-config procps unzip util-linux wget xvfb yasm zlib1g zlib1g-dev
ENV PYTHONUNBUFFERED=1
COPY . .
CMD ["./BEGIN"]
