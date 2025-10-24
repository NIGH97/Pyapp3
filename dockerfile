# basis image
FROM python:3.11-slim

# werkdirectory
WORKDIR /app

# dependencies installeren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# app bestanden kopiëren
COPY . .

# poort
EXPOSE 8501

# command om Streamlit te starten
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
