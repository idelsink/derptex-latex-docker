FROM fedora:32

MAINTAINER Ingmar Delsink https://github.com/idelsink

RUN dnf -y install \
    curl \
    findutils \
    git \
    sudo \
    which && \
    curl -s https://raw.githubusercontent.com/idelsink/mexdown/master/install_latex.sh | \
    bash /dev/stdin YES && \
    dnf clean all

RUN mkdir /workspace
WORKDIR /workspace

# Define OCI annotations (https://github.com/opencontainers/image-spec/blob/master/annotations.md)
LABEL \
  org.opencontainers.image.title="Mexdown" \
  org.opencontainers.image.description="Mexdown" \
  org.opencontainers.image.version="1.0.0" \
