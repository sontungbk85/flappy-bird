FROM python:3.9

COPY . /app

WORKDIR /app
RUN pip install pygame

RUN apt-get update && apt-get install -y python3-pygame
ENV DISPLAY=:0
# Install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends libsdl2-dev libsdl2-mixer-dev \
    libsdl2-image-dev libsdl2-ttf-dev && \
    rm -rf /var/lib/apt/lists/*

CMD ["python", "flappy.py"]
