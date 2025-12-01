FROM summerwind/actions-runner

USER root
RUN apt-get update -y
RUN apt-get install -y git-lfs build-essential
RUN curl -sSL https://dl.min.io/client/mc/release/linux-amd64/mc > /usr/local/bin/mc && chmod +x /usr/local/bin/mc
USER runner