FROM ubuntu:latest
RUN apt-get -y upgrade && apt-get -y update && apt-get install -y build-essential git jq p7zip wget xvfb zlib1g gpg ffmpeg python3 bash apt-utils aptdaemon bash-completion bc binutils bzip2 cpp coreutils gcc libc-bin libc-dev-bin libc6 make makedev cmake
ENV PYTHONUNBUFFERED=1
COPY . .
CMD ["./BEGIN"]
