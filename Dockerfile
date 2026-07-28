FROM python:3.11-slim

WORKDIR /usr/src/app

# Install system dependencies required for some Python packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        git \
        curl \
        pkg-config \
        libgl1 \
        libsm6 \
        libxrender1 \
        libxext6 \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8501

ENV STREAMLIT_SERVER_HEADLESS=true
ENV STREAMLIT_SERVER_ENABLE_CORS=false
ENV STREAMLIT_SERVER_ENABLE_WEBSOCKET_COMPRESSION=false

CMD ["/bin/sh", "-c", "streamlit run App/App.py --server.address 0.0.0.0 --server.port ${PORT:-8501}"]
