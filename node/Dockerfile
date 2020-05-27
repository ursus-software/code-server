FROM node:latest AS node
FROM ursus/code-server:latest
USER root
COPY --from=node /usr/local/ /usr/local/
COPY --from=node /opt/ /opt/
USER coder
RUN for e in node npm yarn; do echo -n "${e} version: " && ${e} --version; done
