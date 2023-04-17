FROM python:3.9

# Install Xvfb
RUN apt-get update && apt-get install -y xvfb

RUN apt-get update && apt-get install -y \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libportmidi-dev \
    libswscale-dev \
    libavformat-dev \
    libavcodec-dev \
    zlib1g-dev \
    alsa-utils \
    libasound2-dev \
    pulseaudio
# Install pygame
RUN pip install pygame

# Set the display environment variable
ENV DISPLAY=:99

# Set environment variables for PulseAudio
ENV PULSE_SERVER unix:/tmp/pulse-unix
ENV PULSE_COOKIE /tmp/pulse-cookie

# Copy your application code into the container
WORKDIR /app
COPY . .

# Start PulseAudio and Xvfb
CMD ["sh", "-c", "pulseaudio --start && Xvfb :99 -screen 0 1024x768x16 &> xvfb.log & python flappy.py"]

