FROM ubuntu:18.04

ENV COLLABORA_VERSION   3.2.2-1

RUN apt-get update && apt-get install -y  --no-install-recommends software-properties-common tzdata  dirmngr gpg-agent
 
RUN set -xe && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0C54D189F4BA284D && \
    echo 'deb https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-ubuntu1804 ./' >> /etc/apt/sources.list && \
    apt-get update && apt-get install -y loolwsd=${COLLABORA_VERSION} code-brand
 
 
VOLUME /etc/loolwsd/
 
USER lool 

CMD /usr/bin/loolwsd --version --o:sys_template_path=/opt/lool/systemplate --o:lo_template_path=/opt/collaboraoffice5.3 --o:child_root_path=/opt/lool/child-roots --o:file_server_root_path=/usr/share/loolwsd
