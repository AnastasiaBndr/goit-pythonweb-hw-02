FROM python:3.12-slim

WORKDIR /goit-pythonweb-hw-02

RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . /goit-pythonweb-hw-02/

EXPOSE 8000

ENTRYPOINT ["python", "main.py"]
