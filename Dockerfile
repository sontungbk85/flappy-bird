# Sử dụng hệ điều hành Ubuntu 20.04
FROM ubuntu:20.04

# Cài đặt các gói cần thiết
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y python3-pygame

# Copy các file cần thiết vào image
COPY . /app

# Thiết lập thư mục làm việc
WORKDIR /app

# Chạy trò chơi Python
CMD ["python3", "flappy.py"]
