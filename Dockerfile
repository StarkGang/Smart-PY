FROM python:3.9
RUN apt-get -y upgrade && apt-get -y update && apt-get install -y gpg ffmpeg python3
RUN apt-get autoremove 
ENV PYTHONUNBUFFERED=1
COPY . .
CMD bash st.sh
