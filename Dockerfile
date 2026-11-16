# Dockerfile untuk Praktikum Analisis Big Data
# Kompatibel dengan Arch Linux / CachyOS
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Hindari buffering output python
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

# Install system dependencies yang dibutuhkan
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Expose port untuk JupyterLab
EXPOSE 8888

# Jalankan JupyterLab secara default
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--ServerApp.token=''"]
