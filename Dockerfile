FROM python:3.12-slim

LABEL org.opencontainers.image.source="https://github.com/gregsadetsky/disco-github-actions-test"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 3000

CMD ["gunicorn", "--bind", "0.0.0.0:3000", "app:app"]
