FROM ubuntu:latest

RUN apt-get update && apt-get install  -y \
    python3 \
    python3-pip \
    git

RUN pip3 install pyyaml

COPY feed.py /us/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh"]

#generate the server