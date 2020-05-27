FROM codercom/code-server:latest
USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl ca-certificates fontconfig locales \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*
USER coder
ENV PROJECT_DIR="/home/coder/project"
ENV EXTENSIONS_DIR="/home/coder/extensions"
RUN mkdir -p $EXTENSIONS_DIR
ENTRYPOINT ["dumb-init", "fixuid", "-q", "/usr/bin/code-server", "--bind-addr", "0.0.0.0:8080", "--extensions-dir", "/home/coder/extensions", "/home/coder/project"]
VOLUME "$PROJECT_DIR"
VOLUME "$EXTENSIONS_DIR"