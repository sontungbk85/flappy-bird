FROM python:3.9-slim-buster

WORKDIR /app

# Install necessary libraries
RUN apt-get update && apt-get install -y python3-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev libsdl1.2-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev libjpeg-dev libtiff5-dev libx11-6 libx11-dev xfonts-base xfonts-100dpi xfonts-75dpi xfonts-cyrillic

# Copy requirements.txt to the working directory and install the required libraries
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the source code to the working directory
COPY . .

# Set the command to run when the container starts
CMD ["python", "flappy.py"]
