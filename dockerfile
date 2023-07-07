FROM python:latest
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 8000
RUN apt-get update && \
    apt-get install -y sqlite3 libsqlite3-dev && \
    rm -rf /var/lib/apt/lists/*
RUN python manage.py migrate
RUN sqlite3 /app/db.sqlite3 < /app/last.sql
CMD python manage.py runserver 0.0.0.0:8000 


