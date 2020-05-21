FROM adoptopenjdk/openjdk11:debian AS openjdk
FROM codercom/code-server:latest
USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl ca-certificates fontconfig locales \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*
COPY --from=openjdk /opt/java/openjdk /opt/java/openjdk
ENV JAVA_HOME="/opt/java/openjdk" PATH="/opt/java/openjdk/bin:$PATH"
USER coder
ENV PROJECT_DIR="/home/coder/project"
ENV EXTENSIONS_DIR="/home/coder/extensions"
ENTRYPOINT ["dumb-init", "fixuid", "-q", "/usr/bin/code-server", "--bind-addr", "0.0.0.0:8080", "--extensions-dir", "/home/coder/extensions", "project"]
RUN mkdir -p $EXTENSIONS_DIR
VOLUME "$PROJECT_DIR"
VOLUME "$EXTENSIONS_DIR"
ENV EXTENSIONS="vscjava.vscode-java-pack redhat.vscode-yaml redhat.vscode-xml eamodio.gitlens"
RUN ["/bin/bash", "-c", "for ext in ${EXTENSIONS[@]}; do code-server --extensions-dir ${EXTENSIONS_DIR} --install-extension ${ext}; done"]
