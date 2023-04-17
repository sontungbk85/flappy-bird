FROM python:3.9

RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get install -y python3-dev && \
    apt-get install -y libgl1-mesa-dev && \
    apt-get install -y x11vnc xvfb && \
    mkdir ~/.vnc

RUN pip install pygame

WORKDIR /app
COPY . /app

ENV DISPLAY=:0 \
    VNC_PORT=5900 \
    VNC_PASSWORD=secret

EXPOSE $VNC_PORT

CMD ["bash", "-c", "echo $VNC_PASSWORD | vncpasswd -f > ~/.vnc/passwd && \
                      chmod 0600 ~/.vnc/passwd && \
                      x11vnc -display :0 -nopw -listen localhost -xkb -forever & \
                      python3 flappy.py"]

