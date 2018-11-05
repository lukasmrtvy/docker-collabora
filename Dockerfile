FROM ubuntu:18.04

ENV COLLABORA_VERSION   3.2.2-1

RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common dirmngr gpg-agent && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0C54D189F4BA284D && \
    echo 'deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-ubuntu1804 ./' > /etc/apt/sources.list.d/code.list && \
    apt-get update && apt-get install -y loolwsd=${COLLABORA_VERSION} code-brand tzdata && \
    apt-purge software-properties-common dirmngr gpg-agent

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

VOLUME /etc/loolwsd/

EXPOSE 9980

ENTRYPOINT /entrypoint.sh
