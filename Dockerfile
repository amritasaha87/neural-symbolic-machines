FROM nvidia/cuda:9.0-cudnn7-runtime
RUN apt-get update && yes | apt-get upgrade
RUN mkdir -p /models
RUN apt-get install -y git python-pip
RUN pip install --upgrade pip
RUN python --version
RUN pip --version
    

COPY . /nsm-gpu
WORKDIR /nsm-gpu
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
CMD python setup.py develop

