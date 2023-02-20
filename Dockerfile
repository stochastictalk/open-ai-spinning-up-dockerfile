FROM python:3.6.9-buster
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install https://github.com/berndie/tensorflow_wheels/releases/download/v1.15.2/tensorflow-1.15.2-cp36-cp36m-linux_x86_64.whl
RUN apt-get update && apt-get install libopenmpi-dev -y
RUN git clone https://github.com/openai/spinningup.git
WORKDIR spinningup
RUN pip install -e .