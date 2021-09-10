FROM python:3.8

RUN useradd -ms /bin/bash user1
USER user1

WORKDIR /home/user1

COPY requirements.txt .

RUN pip install -r requirements.txt && rm requirements.txt

COPY src .


RUN pwd
RUN ls
RUN python HouseSalePricePredictor.py ./ train.csv
RUN ls
RUN head Analysis-test-data.csv


