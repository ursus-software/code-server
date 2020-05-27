FROM adoptopenjdk/openjdk11:debian AS openjdk
FROM ursus/code-server:latest
USER root
COPY --from=openjdk /opt/java/openjdk /opt/java/openjdk
ENV JAVA_HOME="/opt/java/openjdk" PATH="/opt/java/openjdk/bin:$PATH"
USER coder
ENV EXTENSIONS="${EXTENSIONS} vscjava.vscode-java-pack"
RUN ["/bin/bash", "-c", "for ext in ${EXTENSIONS[@]}; do code-server --extensions-dir ${EXTENSIONS_DIR} --install-extension ${ext}; done"]
