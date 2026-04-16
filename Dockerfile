FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie tout le contenu (app.py, templates/, static/)
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
