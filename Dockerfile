FROM tensorflow/tensorflow:1.12.3-gpu
RUN apt-get update && yes | apt-get upgrade
RUN mkdir -p /models
RUN apt-get install -y git python-pip
RUN pip install --upgrade pip

RUN python --version
RUN pip --version

WORKDIR /root
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 
COPY 
RUN python setup.py develop
