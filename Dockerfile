FROM openjdk:11.0.5-jre

RUN curl -o /opt/jolokia.jar https://repo1.maven.org/maven2/org/jolokia/jolokia-jvm/1.6.2/jolokia-jvm-1.6.2-agent.jar \
  && echo "95eef794790aa98cfa050bde4ec67a4e42c2519e130e5e44ce40bf124584f323  /opt/jolokia.jar" | sha256sum -c

ENV LISTEN_ON_JOLOKIA=7777

EXPOSE 7777
