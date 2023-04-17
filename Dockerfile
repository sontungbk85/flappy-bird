FROM python:3.9

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get install -y python3-dev && \
    apt-get install -y libgl1-mesa-dev && \
    apt-get install -y xvfb

# Install Pygame
RUN pip install pygame

# Set up virtual display
ENV DISPLAY=:99

# Start virtual display and run app
CMD ["bash", "-c", "Xvfb :99 -screen 0 1024x768x16 & sleep 5 && python3 flappy.py"]
