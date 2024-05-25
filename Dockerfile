FROM ubuntu:latest


# Install Python 3 and pip

RUN python -m pip install --upgrade pip \
    pip install pyyaml


COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh"]

#generate the server