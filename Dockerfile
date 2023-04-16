FROM python:3.8-alpine

WORKDIR /app

COPY . /app

RUN pip install pygame

CMD ["python", "/app/flappy.py"]
