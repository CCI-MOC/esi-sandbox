openstack workflow delete oesi_owner.check_node_access
openstack workflow delete oesi_owner.create_node
openstack workflow delete oesi_owner.set_node_provision_state
openstack workflow delete oesi_owner.introspect_node
openstack workflow delete oesi_owner.lend_node
openstack workflow delete oesi_owner.retrieve_node
openstack workbook delete oesi_owner
openstack workbook create oesi_owner.yaml --public

#openstack workflow delete oesi_user.list_available_nodes
#openstack workflow delete oesi_user.claim_node
#openstack workflow delete oesi_user.release_node
#openstack workflow delete oesi_user.create_server
#openstack workflow delete oesi_user.create_server_on_node
#openstack workbook delete oesi_user
#openstack workbook create oesi_user.yaml
