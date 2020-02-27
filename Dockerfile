FROM openjdk:latest

COPY sourceCode /opt

WORKDIR /opt

RUN chmod +x buildRunnable.sh

ENTRYPOINT [ "/opt/buildRunnable.sh" ]
