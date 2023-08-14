# ベースイメージとして公式のPythonイメージを使用
FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
 google-cloud-sdk \
 && apt-get clean \

# 作業ディレクトリを設定
WORKDIR /app

# pipのアップグレード
RUN pip install --upgrade pip

# アプリケーションのソースコードをコンテナにコピー
COPY . .
