FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    ruby ruby-dev build-essential \
    rpm \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN gem install fpm

WORKDIR /src

COPY . .

CMD ["/bin/bash"]
