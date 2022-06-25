FROM python:3.9
WORKDIR /app
ENV PYTHONUNBUFFERED=1
COPY . .
CMD ["./begin.sh.x"]
