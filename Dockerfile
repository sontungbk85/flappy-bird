# Sử dụng image python:3.9 làm base image
FROM python:3.9
# Tạo một thư mục app trong container
WORKDIR /app
# Sao chép tất cả các file trong thư mục hiện tại vào thư mục /app trong container
COPY . /app
# Cài đặt thư viện cần thiết
RUN ls -al
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Chạy lệnh khi container được khởi động
CMD ["python", "flappy.py"]
