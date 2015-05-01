FROM phusion/baseimage
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
	apt-get install -y -q --no-install-recommends \
	python2.7 python-pip build-essential python-dev

RUN pip install Flask Flask-Cache requests redis

ADD server.py /app/server.py
ADD templates /app/templates/

ENTRYPOINT ["python", "-u", "/app/server.py"]

EXPOSE 5000
