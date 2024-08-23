FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update -y && \
    apt-get install -y autoconf cmake make gcc g++

WORKDIR /project

ENTRYPOINT ["/bin/bash"]
