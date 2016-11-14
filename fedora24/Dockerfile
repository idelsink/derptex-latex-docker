from fedora:24

maintainer Ingmar Delsink <mail@idelsink.com>
label version="1.0"
label description="mexdown docker image"

run dnf -y update && dnf clean all
run dnf -y install \
sudo \
findutils \
which \
git \
&& dnf clean all

run git clone --depth 1 https://github.com/idelsink/mexdown.git --recursive && \
./mexdown/install_latex.sh YES

workdir /workspace
