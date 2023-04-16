FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install pygame

COPY . .

CMD ["python", "/app/flappy.py"]
