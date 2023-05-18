FROM python:3.8-slim-buster

COPY requirements.txt /requirements.txt

COPY . /app

WORKDIR /

ENV FLASK_APP app/app.py

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0", "--reload"]