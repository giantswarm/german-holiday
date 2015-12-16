FROM python:2.7

RUN pip install Flask Flask-Cache requests redis

ADD server.py /app/server.py
ADD templates /app/templates/

ENTRYPOINT ["python", "-u", "/app/server.py"]

EXPOSE 5000
