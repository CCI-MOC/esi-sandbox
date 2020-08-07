FROM docker.io/tripleou/centos-binary-neutron-server:current-tripleo

USER root
WORKDIR /tmp

RUN yum -y install git && \
	git clone https://github.com/ansible-network/network-runner && \
	cd network-runner && \
	python3 setup.py install && \
	cd .. && \
	git clone https://opendev.org/x/networking-ansible && \
	cd networking-ansible && \
	python3 setup.py install && \
	yum clean all

WORKDIR /
USER neutron
