ARG BASE_IMAGE=ghcr.io/ursus-software/code-server:latest
FROM node:latest AS node
FROM $BASE_IMAGE
USER root
COPY --from=node /usr/local/ /usr/local/
COPY --from=node /opt/ /opt/
USER coder
RUN for e in node npm yarn; do echo -n "${e} version: " && ${e} --version; done
