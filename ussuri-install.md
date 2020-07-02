# ESI demo environment setup
## Requirements
* CentOS 8
* Ussuri tripleo-repos
## Steps
* Download and install the python-tripleo-repos RPM
```
sudo dnf install -y https://trunk.rdoproject.org/centos8/component/tripleo/current/python3-tripleo-repos-0.1.1-0.20200612051255.ecf6206.el8.noarch.rpm
```
* Enable the current Ussuri repositories
```
sudo -E tripleo-repos -b ussuri current
```
* Install the TripleO CLI
```
sudo yum install -y python3-tripleoclient
```
* git clone esi-sandbox repo and cd esi-sandbox
* In deploy.sh, change INTERFACE with a proper value.
* In standalone_parameters.yaml, change NeutronPublicInterface with a proper value.  
* Run ./deploy.sh
* After a successful deployment, 'export OS_CLOUD=standalone' before running OpenStack commands.
* Cleanup a deployment: run ./cleanup.sh

# Previous issues
* The vm disk size on '\\' should be large enough to pull and store all required images. We currently allocate 112G to it.
* The docker registry task in deployment fails, which is caused by 'No package docker-distribution available'. Solution: remove OS::TripleO::Services::DockerRegistry in standalone_parameters.yaml because CentOS 8 doesn't provide docker-distribution package. 
* Issues related to CentOS 7 vm:
    * The vm host version (CentOS 7.8) is different from HA containers version (CentOS 7.7), which could cause MySQL init task failure during deployment. So we update the vm to CentOS 8.2.
    * puppet command returns 'libfacter was not found'. Solution: sudo yum downgrade -y leatherman