FROM python:3.6.5-stretch

WORKDIR /app

RUN pip install gunicorn flask

RUN apt-get update && apt-get install -y nginx

EXPOSE 8088

COPY main.py entrypoint.sh /app/
COPY app.conf /etc/nginx/conf.d/

ENTRYPOINT ./entrypoint.sh
