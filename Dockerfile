FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3-full\
    python3-pip\
    build-essential\
    libyaml-dev\
    git

RUN pip3 install PyYAML --break-system-packages

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh  /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]