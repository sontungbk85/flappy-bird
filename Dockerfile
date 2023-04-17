FROM python:3.9

COPY . /app

WORKDIR /app

RUN apt-get update && apt-get install -y python3-pygame
ENV DISPLAY=:0


CMD ["python", "flappy.py"]
