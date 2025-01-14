FROM python:3.12-slim

LABEL maintainer="Steve Christiaens<schristiaens@bamboohr.com>"
LABEL version="0.1"
LABEL description="An image for an Slack bot that is a front for my AI agent"

WORKDIR /app

COPY ./src /app

RUN apt-get update -y && \
    pip install .

ENTRYPOINT [ "python3", "app.py" ]