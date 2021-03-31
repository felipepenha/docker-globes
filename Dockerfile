FROM debian:buster-slim AS base

ARG GLOBES

USER root

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y wget && \
    apt-get install -y build-essential && \
    apt-get install -y libgsl-dev

RUN wget https://www.mpi-hd.mpg.de/personalhomes/globes/download/${GLOBES}.tar.gz

RUN tar xvzf "${GLOBES}.tar.gz"

RUN (cd "/${GLOBES}" && \
    ./configure --prefix=/usr/local/ && \
    make all && \
    make install)