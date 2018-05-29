FROM ubuntu:18.04

ENV UID 1000
ENV GID 1000
ENV USER htpc
ENV GROUP htpc

ENV COLLABORA_VERSION   3.2.2-1

RUN groupadd -r -g ${GID} ${GROUP} && adduser --disabled-password --uid ${UID} --ingroup ${GROUP} --gecos '' ${USER} \
 && apt-get update && apt-get install -y  --no-install-recommends software-properties-common tzdata  dirmngr gpg-agent
 
RUN set -xe && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0C54D189F4BA284D && \
    echo 'deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-ubuntu1804 ./' >> /etc/apt/sources.list && \
    apt-get update && apt-get install -y loolwsd=${COLLABORA_VERSION} code-brand
 
