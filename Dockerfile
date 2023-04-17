FROM python:3.9

COPY . /app

WORKDIR /app
RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get install -y python3-dev && \
    apt-get install -y libgl1-mesa-dev
RUN pip install pygame
CMD ["python3", "flappy.py"]

ENV DISPLAY=:0
