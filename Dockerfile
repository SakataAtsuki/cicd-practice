# ベースイメージとして公式のPythonイメージを使用
FROM python:3.9-slim

# 作業ディレクトリを設定
WORKDIR /app

# Pythonプログラムをコピー
COPY . .

# Pythonプログラムを実行
CMD ["python3", "main.py"]
