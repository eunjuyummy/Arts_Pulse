FROM jupyter/datascience-notebook

USER root

RUN apt-get update && apt-get install -y \
    build-essential git curl wget nano \
    && rm -rf /var/lib/apt/lists/*

ENV JUPYTER_GITHUB_TOKEN=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

CMD ["start-notebook.sh", "--NotebookApp.token=''"]
