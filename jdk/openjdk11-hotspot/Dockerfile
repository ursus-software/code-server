
ARG BASE_IMAGE=ghcr.io/ursus-software/code-server:latest
FROM adoptopenjdk/openjdk11:debian AS openjdk
FROM $BASE_IMAGE
USER root
COPY --from=openjdk /opt/java/openjdk /opt/java/openjdk
ENV JAVA_HOME="/opt/java/openjdk" PATH="/opt/java/openjdk/bin:$PATH"
USER coder
RUN java --version
ENV EXTENSIONS="${EXTENSIONS} vscjava.vscode-java-pack sonarsource.sonarlint-vscode"
RUN ["/bin/bash", "-c", "for ext in ${EXTENSIONS[@]}; do code-server --extensions-dir ${EXTENSIONS_DIR} --install-extension ${ext}; done"]
