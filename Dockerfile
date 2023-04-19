FROM python:3.9.2

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

# EXPOSE 5001

# CMD ["python", "app.py"]

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]