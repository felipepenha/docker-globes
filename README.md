# docker-globes
Docker image for General Long Baseline Experiment Simulator (GloBES)

# Local OS Requirements

These are requirements for your local machine, ideally a Debian Linux OS:

## - [docker](https://docs.docker.com/engine/install/)

Follow the [instructions in the docker docs](https://docs.docker.com/engine/install/linux-postinstall/) to ensure that $USER has root access to docker.

## - [docker-compose](https://docs.docker.com/compose/install/)

# Quick Start

To build the image:

```bash
docker-compose build
```

To access the the command-line interface:

```bash
docker-compose run bash
```
