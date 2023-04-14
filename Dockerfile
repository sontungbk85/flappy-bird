# Sử dụng image python:3.9 làm base image
FROM python:3.9

# Tạo một thư mục app trong container
WORKDIR /app

# Cài đặt thư viện pygame
RUN pip install pygame

# Sao chép tất cả các file trong thư mục hiện tại vào thư mục /app trong container
COPY . /app

# Chạy lệnh khi container được khởi động
CMD ["python", "app.py"]