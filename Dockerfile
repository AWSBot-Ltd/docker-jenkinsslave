FROM jenkinsci/slave
MAINTAINER David Reay <dcrbsltd@gmail.com>

USER root
RUN apt-get update && \
    apt-get install -y awscli python-pip ansible groff less

RUN wget -q https://releases.hashicorp.com/terraform/0.6.16/terraform_0.6.16_linux_amd64.zip && unzip terraform_0.6.16_linux_amd64.zip -d /usr/local/bin/

USER jenkins
