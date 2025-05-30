FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# ここ追加！！！
ENV PYTHONPATH=/app

CMD ["gunicorn", "-b", "0.0.0.0:8080", "myapp.app:app"]

