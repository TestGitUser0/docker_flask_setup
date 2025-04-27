FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# GunicornでFlaskを起動（Python開発サーバーは使わない）
CMD ["gunicorn", "-b", "0.0.0.0:8080", "myapp.app.app:app"]

