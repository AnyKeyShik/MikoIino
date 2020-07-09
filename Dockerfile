FROM python:3.8

LABEL maintainer="AnyKeyShik Rarity"
LABEL version="0.1"
LABEL name="MikoProd"
LABEL tag="MikoProd"

COPY . /Miko
WORKDIR /Miko
RUN apt-get update; apt-get install --no-install-recommends -y gcc
RUN pip3 install -r requirements.txt

ENV MIKO_HOME /Miko
ENV MIKO_TEST 0
RUN mkdir /Miko/logs
CMD python ./run.py