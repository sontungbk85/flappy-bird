FROM python:3.9

COPY . /app

WORKDIR /app
RUN apt-get update && apt-get install -y \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libsmpeg-dev \
    libportmidi-dev \
    libavformat-dev \
    libswscale-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libgif-dev \
    python3-dev \
    python3-numpy \
    python3-pip
RUN pip3 install --upgrade pip
RUN pip install pygame
ENV DISPLAY=:0
# Install necessary packages

CMD ["python", "flappy.py"]
