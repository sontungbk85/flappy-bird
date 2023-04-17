FROM python:3.9

RUN apt-get update && apt-get install -y xvfb
RUN pip install pygame

COPY . /app

WORKDIR /app

CMD xvfb-run -s "-screen 0 1400x900x24" python3 flappy.py

