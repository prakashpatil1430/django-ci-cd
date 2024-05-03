FROM python:3.11.4-alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt

RUN python3 -m venv /opt/venv


# Upgrade pip and install dependencies
RUN python3 -m venv /opt/venv

# activate venv
ENV PATH="/opt/venv/bin:$PATH"

ARG DEV=false

RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user


COPY . /app/