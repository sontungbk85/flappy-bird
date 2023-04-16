# Sử dụng một hệ điều hành cơ sở
FROM python:3.9-slim-buster

# Sao chép tệp yêu cầu và mã nguồn của ứng dụng vào image
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Chạy ứng dụng
CMD ["python", "flappy.py"]
