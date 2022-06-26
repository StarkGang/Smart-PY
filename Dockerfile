FROM python:3.9-slim-buster
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install ffmpeg gcc libc6-dev shc
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY . .
CMD ["chmod a+x BEGIN; ./BEGIN"]