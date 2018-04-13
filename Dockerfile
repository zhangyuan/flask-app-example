FROM python:3.6.5-stretch

RUN pip install gunicorn flask

EXPOSE 8088

CMD ["gunicorn", "-b", "0.0.0.0:8808", "main:app"]
