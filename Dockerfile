FROM pataquets/ubuntu:xenial

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y --no-install-recommends install \
      colplot \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
