FROM quay.io/tripleowallaby/openstack-cinder-volume:current-tripleo

USER root
WORKDIR /tmp

RUN yum -y install git && \
        git config --global user.email "foobarwoobar@redhat.com" && \
        git config --global user.name "Foobie Barfoo" && \	
	git clone https://review.opendev.org/openstack/cinder && \
    	cd cinder && \
	git checkout stable/wallaby && \
	git fetch "https://review.opendev.org/openstack/cinder" refs/changes/06/775706/4 && git cherry-pick FETCH_HEAD && \
    	python3 setup.py install && \
	cd .. && \
	git clone https://github.com/hemna/rbd-iscsi-client && \
    	cd rbd-iscsi-client && \
        git checkout v0.1.8 && \	
    	python3 setup.py install && \
    	yum clean all

WORKDIR /
USER cinder
