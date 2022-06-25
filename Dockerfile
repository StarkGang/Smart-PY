FROM python:3.9
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY . .
RUN apt install ffmpeg -y
CMD ["./begin.sh"]
