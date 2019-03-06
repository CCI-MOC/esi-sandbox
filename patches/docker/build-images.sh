#!/bin/bash

set -e
declare -A images

images[mistral-api]=192.168.1.2:8787/moc/centos-binary-mistral-api:rocky-ironic-traits
images[mistral-executor]=192.168.1.2:8787/moc/centos-binary-mistral-executor:rocky-ironic-traits
images[nova-compute]=192.168.1.2:8787/moc/centos-binary-nova-compute:I907b69eb689cf6c169a4869cfc7889308ca419d5
images[nova-compute-ironic]=192.168.1.2:8787/moc/centos-binary-nova-compute-ironic:I907b69eb689cf6c169a4869cfc7889308ca419d5
images[nova-scheduler]=192.168.1.2:8787/moc/centos-binary-nova-scheduler:rocky-oesi-scheduler

for k in "${!images[@]}"; do
	echo "building in $k"
	docker build -t "${images[$k]}" $k
	docker push "${images[$k]}"
done
