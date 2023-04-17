FROM python:3.9

# Install Xvfb
RUN apt-get update && apt-get install -y xvfb

# Install dependencies for pygame
RUN apt-get update && apt-get install -y \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libportmidi-dev \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev \
    zlib1g-dev

# Install pygame and other dependencies
RUN pip install pygame

# Set the display environment variable
ENV DISPLAY=:99

# Start Xvfb
CMD ["sh", "-c", "Xvfb :99 -screen 0 1024x768x16 &> xvfb.log & python flappy.py"]
