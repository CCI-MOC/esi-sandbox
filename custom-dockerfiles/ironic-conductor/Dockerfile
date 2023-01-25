FROM quay.io/tripleowallaby/openstack-cinder-volume:current-tripleo

USER root
WORKDIR /tmp

RUN sed -i 's/$stream/8-stream/g' /etc/yum.repos.d/CentOS-* && \
    yum -y install git && \
	git clone https://review.opendev.org/openstack/ironic && \
    	cd ironic && \
	git checkout stable/wallaby && \
	git fetch "https://review.opendev.org/openstack/cinder" refs/changes/06/775706/4 && git cherry-pick FETCH_HEAD && \
    	python3 setup.py install && \
    	yum clean all

WORKDIR /
USER cinder
