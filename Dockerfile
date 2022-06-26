FROM ubuntu:20.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install ffmpeg gcc libc6-dev shc coreutils
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY . .
CMD ["./BEGIN"]
