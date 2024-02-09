FROM registry.access.redhat.com/ubi9/python-311:1-45

USER root

WORKDIR /Deckard

RUN dnf update -y 

RUN dnf install gcc bison -y

COPY . .

RUN pip install -r requirements.txt

RUN make all