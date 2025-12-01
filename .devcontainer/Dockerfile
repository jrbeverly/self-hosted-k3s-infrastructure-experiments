FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

RUN curl -sLS https://get.k3sup.dev | sh

RUN curl -s https://fluxcd.io/install.sh | sudo bash

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && rm -f kubectl
