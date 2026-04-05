#FROM ubuntu:latest
FROM python:3.10

RUN apt-get update && apt-get install -y \
  python3.10 \ 
  python3-pip \
  git

RUN python3 -m pip install --break-system-packages pyyaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]