FROM docker.io/tripleou/centos-binary-neutron-server:current-tripleo

USER root
WORKDIR /tmp

RUN touch /tmp/test1.txt
RUN touch /tmp/test2.txt

WORKDIR /
USER neutron
