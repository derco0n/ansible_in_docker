ARG ARCH=
FROM ${ARCH}ubuntu:24.04
RUN apt update; \
    apt install -y gcc python3; \
    apt install -y python3-pip; \
    apt install -y ansible; \
    apt clean all
