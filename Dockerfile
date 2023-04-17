FROM python:3.9

COPY . /app

WORKDIR /app

RUN pip install pygame

CMD ["python", "flappy.py"]
