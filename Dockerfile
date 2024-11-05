ARG PYTHON_IMAGE=python:3.11-alpine
FROM $PYTHON_IMAGE

WORKDIR /usr/src/app

COPY conf/requirements.txt .
COPY conf/constraints.txt .

RUN pip install --no-cache-dir -r requirements.txt\
    -c constraints.txt

COPY . .

WORKDIR /usr/src/app
