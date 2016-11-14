FROM fedora:24

MAINTAINER Ingmar Delsink <mail@idelsink.com>

RUN dnf -y update && dnf clean all
RUN dnf -y install \
sudo \
findutils \
which \
git \
&& dnf clean all

# install dependencies
RUN git clone --depth 1 https://github.com/idelsink/derptex-latex.git --recursive && \
./derptex-latex/install_latex.sh YES

WORKDIR /workspace
