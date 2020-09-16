FROM docker.io/tripleou/centos-binary-neutron-server:current-tripleo

USER root
WORKDIR /tmp

RUN yum -y install git && \
	git clone https://github.com/ansible-network/network-runner && \
	cd network-runner && \
	git fetch origin pull/48/head:test-48 && \
        git checkout test-48 && \
	python3 setup.py install && \
	cd .. && \
	git clone https://opendev.org/x/networking-ansible && \
	cd networking-ansible && \
	git fetch https://opendev.org/x/networking-ansible refs/changes/18/745318/3 && git checkout FETCH_HEAD && \	
	python3 setup.py install && \
	yum clean all

WORKDIR /
USER neutron
