FROM docker.io/tripleomaster/centos-binary-nova-scheduler:current-tripleo

USER root
WORKDIR /tmp

RUN yum -y install git && \
	git clone https://github.com/tzumainn/nova/ && \
	cd nova && \
	git checkout rocky-oesi-scheduler && \
	python setup.py install && \
	yum clean all


WORKDIR /
USER nova
