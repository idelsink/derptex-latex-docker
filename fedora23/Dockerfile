FROM fedora:23

MAINTAINER Ingmar Delsink https://github.com/idelsink
LABEL version="1.0" \
      description="mexdown docker image"

RUN dnf -y install \
    sudo \
    findutils \
    which \
    git && \
    git clone --depth 1 https://github.com/idelsink/mexdown.git --recursive && \
    ./mexdown/install_latex.sh YES && \
    dnf clean all

WORKDIR /workspace
