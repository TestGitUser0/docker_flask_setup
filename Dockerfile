# ベースイメージ
FROM python:3.11-slim

# 環境変数
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# 作業ディレクトリ
WORKDIR /app

# 依存ファイルだけ先にコピーしてキャッシュ効かせる
COPY requirements.txt .

# pipのアップグレードと依存インストール
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# アプリ全体コピー
COPY flask /app

# 必要ならポート明示（開発時に役立つ）
EXPOSE 5000

# アプリ起動
CMD ["python", "app/app.py"]

