FROM docker.io/tripleou/centos-binary-cinder-volume:current-tripleo

USER root
WORKDIR /tmp

RUN yum -y install git && \
	git clone https://review.opendev.org/openstack/cinder && \
    	cd cinder && \ 
    	git fetch https://review.opendev.org/openstack/cinder refs/changes/29/662829/36 && git checkout FETCH_HEAD && \
    	python3 setup.py install && \
    	yum clean all

WORKDIR /
USER cinder
