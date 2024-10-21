# Gunakan image Python base yang slim
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt dan install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy seluruh source code aplikasi
COPY . .

# Expose port yang digunakan aplikasi (bisa disesuaikan)
EXPOSE 8080  # Ganti dengan port yang Anda inginkan

# Jalankan aplikasi Flask dengan Gunicorn
 CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:hello_world"]
