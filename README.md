# code-server
Ready to use IDE images based on [codercom/code-server:latest](https://hub.docker.com/r/codercom/code-server).

Built images can be found on [Docker Hub](https://hub.docker.com/r/ursus/code-server).

## Base Image
All images are derived from this image.

#### Extensions
* redhat.vscode-yaml
* redhat.vscode-xml
* eamodio.gitlens

#### Image
* [ursus/code-server:latest](https://github.com/ursus-software/code-server/blob/master/Dockerfile)

## JDK
JDK copied from adoptopenjdk images.

#### Additional Extensions
* vscjava.vscode-java-pack
* sonarsource.sonarlint-vscode

#### Images
* [ursus/code-server:openjdk11-hotspot](https://github.com/ursus-software/code-server/blob/master/jdk/openjdk11-hotspot/Dockerfile) - JDK from [adoptopenjdk/openjdk11:debian](https://hub.docker.com/r/adoptopenjdk/openjdk11) ([Dockerfile](https://github.com/AdoptOpenJDK/openjdk-docker/blob/master/11/jdk/debian/Dockerfile.hotspot.releases.full))

## NodeJS
All executables copied from node:latest

#### Images
* [ursus/code-server:node](https://github.com/ursus-software/code-server/blob/master/node/Dockerfile) - Node from [node:latest](https://hub.docker.com/_/node)
