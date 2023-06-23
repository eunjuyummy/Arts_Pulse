FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential git curl wget nano \
    libcurl4-gnutls-dev libssl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /build
WORKDIR /build

EXPOSE 8889

ENV JUPYTER_GITHUB_TOKEN=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

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8889", "--allow-root"]
