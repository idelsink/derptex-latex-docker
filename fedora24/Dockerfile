from fedora:24

maintainer Ingmar Delsink <mail@idelsink.com>
label version="1.0"
label description="DerpTeX-LaTeX docker image"

run dnf -y update && dnf clean all
run dnf -y install \
sudo \
findutils \
which \
git \
&& dnf clean all

run git clone --depth 1 https://github.com/idelsink/derptex-latex.git --recursive && \
./derptex-latex/install_latex.sh YES

workdir /workspace
