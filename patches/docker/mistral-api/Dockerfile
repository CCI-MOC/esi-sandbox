FROM docker.io/tripleomaster/centos-binary-mistral-executor:current-tripleo

USER root
WORKDIR /tmp

RUN yum -y install git && \
	git clone https://github.com/tzumainn/mistral/ && \
	cd mistral && \
	git checkout rocky-ironic-trait-support && \
	python setup.py install && \
        cd .. && \
	git clone https://github.com/tzumainn/python-novaclient/ && \
	cd python-novaclient && \
	git checkout flavor-manager-keys && \
	python setup.py install && \
	yum clean all


WORKDIR /
USER mistral
