FROM debian:jessie

MAINTAINER Martin Janser <martin@duss-janser.ch>

RUN apt-get update && apt-get install -y rubygems
RUN gem install capifony

ENV SSH_AUTH_SOCK /root/ssh-agent

WORKDIR /root/workdir

ENTRYPOINT ["cap"]
