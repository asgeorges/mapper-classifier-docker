FROM ubuntu:16.04

MAINTAINER Alex Georges "ageorges@ucsd.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip install --upgrade pip

RUN pip3 install -r requirements.txt

COPY . /

ENTRYPOINT [ "python3" ]

