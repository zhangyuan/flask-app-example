FROM python:3.6.5-stretch

WORKDIR /app

RUN pip install gunicorn flask

EXPOSE 8088


COPY main.py /app/

CMD ["gunicorn", "-b", "0.0.0.0:8808", "main:app"]
