FROM python:3.9.4-slim-buster

ENV TZ JST-9

RUN pip3 install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

RUN mkdir /data
